#!/usr/bin/env python3
"""
transform_allegro_bom.py
-------------------------
Transforms a Cadence Allegro BOM CSV with three steps:

  1. Merge OL_COMMENTS, KL_COMMENTS, PL_COMMENTS → single COMMENTS column.
  2. Generate PART_DESCRIPTION for ceramic capacitors whose Part Name follows
     the pattern  CAPCERSMDCL2_<package>-<value>[_<dielectric>],<voltage>[_GEN]
     e.g.  CAPCERSMDCL2_0402-100NF,16V_GEN  →  "Capacitor, SMD, Class2, 0402, 100nF, 16V, Generic"
  3. Generate PART_DESCRIPTION for SMD resistors whose Part Name follows
     the pattern  RSMD<package>_[<power>]-<value>,<tolerance>
     e.g.  RSMD0603_1/10W-1,1%  →  "Resistor, SMD, 0603, 1/10W, 1-Ohm, 1%"

Existing non-blank PART_DESCRIPTION values are preserved.

Works on both the grouped BOM (multiple RefDes per row) and the one-per-line BOM.

Usage
-----
    python transform_allegro_bom.py --input mib_v3b_v233.csv
    python transform_allegro_bom.py --input mib_v3b_v233.csv --output transformed.csv
"""

import argparse
import csv
import re
import sys
from pathlib import Path


# ---------------------------------------------------------------------------
# Constants
# ---------------------------------------------------------------------------

# Values treated as "no content" in comment and description fields
EMPTY_VALUES = frozenset({"?", "-", ""})


# ---------------------------------------------------------------------------
# 1. COMMENTS merge
# ---------------------------------------------------------------------------

def merge_comments(*fields: str) -> str:
    """Combine comment fields, silently dropping placeholders (? or -)."""
    parts = [f.strip() for f in fields if f.strip() not in EMPTY_VALUES]
    return "; ".join(parts)


def merge_dnf(dnf: str, do_not_fit: str) -> str:
    """Return 'TRUE' if either DNF field has a value other than '?', else ''."""
    if dnf.strip() != "?" or do_not_fit.strip() != "?":
        return "TRUE"
    return ""


def _append_field(existing: str, new_val: str, sep: str = "; ") -> str:
    """
    Append new_val to existing, ignoring empty/placeholder values.
    Returns existing unchanged if new_val is empty or a placeholder.
    """
    new_val = new_val.strip()
    if new_val in EMPTY_VALUES:
        return existing
    existing = existing.strip()
    if existing in EMPTY_VALUES or not existing:
        return new_val
    return f"{existing}{sep}{new_val}"


# ---------------------------------------------------------------------------
# 2. Capacitor description generator
# ---------------------------------------------------------------------------

# Pattern:  CAPCERSMDCL<class>_<package>-<value>[_<dielectric>],<voltage>[_<suffix>]
_CAP_RE = re.compile(
    r"""^
    CAPCERSMDCL(\d+)        # group 1: class number, e.g. "2"
    _(\w+)                  # group 2: package,      e.g. "0402"
    -([^,_]+)               # group 3: capacitance,  e.g. "100NF"
    (?:_([^,]+))?           # group 4: dielectric (optional), e.g. "X7R"
    ,([^_,]+)               # group 5: voltage,      e.g. "16V"
    (?:_(.+))?              # group 6: suffix (optional), e.g. "GEN"
    $""",
    re.IGNORECASE | re.VERBOSE,
)

_CAP_UNIT_MAP = {
    "PF": "pF",
    "NF": "nF",
    "UF": "µF",
    "MF": "mF",
}

def _fmt_capacitance(raw: str) -> str:
    """Convert e.g. '100NF' → '100nF', '1UF' → '1µF'."""
    m = re.match(r"^([\d.]+)(pf|nf|uf|mf)$", raw, re.IGNORECASE)
    if m:
        num, unit = m.group(1), m.group(2).upper()
        return f"{num}{_CAP_UNIT_MAP.get(unit, unit)}"
    return raw  # return unchanged if unrecognised


def describe_capacitor(part_name: str) -> str | None:
    """
    Return a human-readable description for a CAPCERSMDCL2_... part name,
    or None if the name doesn't match the pattern.
    """
    m = _CAP_RE.match(part_name)
    if not m:
        return None

    cls        = m.group(1)               # "2"
    package    = m.group(2).upper()       # "0402"
    cap_raw    = m.group(3)               # "100NF"
    dielectric = m.group(4)               # "X7R" or None
    voltage    = m.group(5).upper()       # "16V"
    suffix     = m.group(6)               # "GEN" or None

    parts = [
        "Capacitor",
        "SMD",
        f"Class{cls}",
        package,
        _fmt_capacitance(cap_raw),
        voltage,
    ]

    if dielectric:
        parts.append(dielectric.upper())

    if suffix:
        tag = suffix.strip("_").upper()
        parts.append("Generic" if tag == "GEN" else tag)

    return ", ".join(parts)


# ---------------------------------------------------------------------------
# 3. Resistor description generator
# ---------------------------------------------------------------------------

# Pattern:  RSMD<package>_[<power>]-<value>,<tolerance>
_RES_RE = re.compile(
    r"""^
    RSMD                    # fixed prefix
    (\w+?)                  # group 1: package (lazy), e.g. "0402"
    _                       # separator
    ([^-]*)                 # group 2: power rating (may be empty), e.g. "1/16W"
    -                       # separator
    ([^,]*)                 # group 3: resistance value, e.g. "1K"
    ,                       # separator
    (.*)                    # group 4: tolerance, e.g. "1%"
    $""",
    re.IGNORECASE | re.VERBOSE,
)

def _fmt_resistance(raw: str) -> str:
    """
    Format a raw resistance value string.
      '1K'   → '1k-Ohm'
      '2.2K' → '2.2k-Ohm'
      '200'  → '200-Ohm'
      '0.27' → '0.27-Ohm'
      '00'   → '0-Ohm (Jumper)'
      'XX'   → 'XX-Ohm (TBD)'
    """
    raw = raw.strip()
    upper = raw.upper()

    if upper in ("00", "0"):
        return "0-Ohm (Jumper)"
    if upper == "XX":
        return "XX-Ohm (TBD)"

    # K or M suffix
    m = re.match(r"^([\d.]+)([KkMm]?)$", raw)
    if m:
        num, sfx = m.group(1), m.group(2)
        if sfx in ("K", "k"):
            return f"{num}k-Ohm"
        if sfx in ("M", "m"):
            return f"{num}M-Ohm"
        return f"{num}-Ohm"

    return f"{raw}-Ohm"  # fallback


def _fmt_power(raw: str) -> str:
    """Normalise power rating, e.g. '125MW' → '125mW'."""
    raw = raw.strip()
    if raw.upper().endswith("MW"):
        return raw[:-2] + "mW"
    return raw  # '1/16W', '1/10W' etc. are already fine


def describe_resistor(part_name: str) -> str | None:
    """
    Return a human-readable description for a RSMD... part name,
    or None if the name doesn't match.
    """
    m = _RES_RE.match(part_name)
    if not m:
        return None

    package   = m.group(1).upper()  # "0402"
    power_raw = m.group(2)          # "1/16W" or ""
    value_raw = m.group(3)          # "1K"
    tolerance = m.group(4).strip()  # "1%"

    parts = ["Resistor", "SMD", package]

    power = _fmt_power(power_raw)
    if power:
        parts.append(power)

    parts.append(_fmt_resistance(value_raw))

    if tolerance and tolerance not in EMPTY_VALUES:
        parts.append(tolerance)

    return ", ".join(parts)


# ---------------------------------------------------------------------------
# Generic description dispatcher
# ---------------------------------------------------------------------------

def generate_description(part_name: str) -> str | None:
    """Try every known parser; return the first successful description."""
    for fn in (describe_capacitor, describe_resistor):
        result = fn(part_name)
        if result:
            return result
    return None


# ---------------------------------------------------------------------------
# 4. Supplier info generators  (supplier name + supplier part number)
# ---------------------------------------------------------------------------

def _eia_notation(num: str, sfx: str) -> str:
    """
    Convert a numeric string + multiplier suffix to EIA notation, where the
    suffix letter replaces the decimal point.
      ("5.6",  "k") → "5k6"
      ("2.2",  "k") → "2k2"
      ("0.27", "R") → "0R27"
      ("10",   "k") → "10k"    (no decimal — no change)
      ("200",  "R") → "200R"
    """
    if "." in num:
        integer, frac = num.split(".", 1)
        return f"{integer}{sfx}{frac}"
    return f"{num}{sfx}"


def _fmt_cap_supplier(raw: str) -> str:
    """Format capacitance for a supplier part number: 100NF→100nF, 1UF→1uF."""
    m = re.match(r"^([\d.]+)(pf|nf|uf|mf)$", raw, re.IGNORECASE)
    if not m:
        return raw
    num, unit = m.group(1), m.group(2).upper()
    return num + {"PF": "pF", "NF": "nF", "UF": "uF", "MF": "mF"}.get(unit, unit)


def _fmt_res_supplier(raw: str) -> str:
    """
    Format resistance for a supplier part number using EIA notation.
      10K   → 10k    5.6K → 5k6    2.2K → 2k2
      200   → 200R   0.27 → 0R27
      1.5M  → 1M5    00   → 0R
    """
    raw = raw.strip()
    upper = raw.upper()
    if upper in ("00", "0"):
        return "0R"
    if upper == "XX":
        return "XX"
    m = re.match(r"^([\d.]+)([KkMm]?)$", raw)
    if m:
        num, sfx = m.group(1), m.group(2)
        if sfx in ("K", "k"):
            return _eia_notation(num, "k")
        if sfx in ("M", "m"):
            return _eia_notation(num, "M")
        return _eia_notation(num, "R")
    return raw


def supplier_capacitor(part_name: str) -> tuple[str, str] | None:
    """Return (supplier, part_number) for a matched capacitor part, or None."""
    m = _CAP_RE.match(part_name)
    if not m:
        return None
    package = m.group(2).upper()
    voltage = m.group(5).upper()
    pn = f"{package}-{_fmt_cap_supplier(m.group(3))}-{voltage}"
    return ("NEL", pn)


def supplier_resistor(part_name: str) -> tuple[str, str] | None:
    """Return (supplier, part_number) for a matched resistor part, or None."""
    m = _RES_RE.match(part_name)
    if not m:
        return None
    package = m.group(1).upper()
    pn = f"{package}-{_fmt_res_supplier(m.group(3))}"
    return ("NEL", pn)


def generate_supplier_info(part_name: str) -> tuple[str, str] | None:
    """Return (supplier, supplier_part_number) or None if not a known generic part."""
    for fn in (supplier_capacitor, supplier_resistor):
        result = fn(part_name)
        if result:
            return result
    return None


# ---------------------------------------------------------------------------
# BOM file parser (handles the 6-line metadata header)
# ---------------------------------------------------------------------------

_METADATA_RE = re.compile(
    r"^\s*(TITLE|DATE|DESIGN|TEMPLATE|CALLOUT)\s*:", re.IGNORECASE
)

def parse_bom(path: Path) -> tuple[list[str], list[dict]]:
    """
    Read an Allegro BOM CSV that starts with TITLE:/DATE:/... metadata lines
    followed by the real CSV starting with the column header.
    Returns (column_names, rows).
    """
    with path.open(newline="", encoding="utf-8-sig") as fh:
        lines = fh.readlines()

    header_idx = None
    for i, line in enumerate(lines):
        stripped = line.strip()
        # Treat truly blank lines AND comma-only padding lines as non-header
        # (Allegro sometimes writes the separator row as ",,,,,..." rather than "")
        if not stripped or not stripped.replace(",", "") or _METADATA_RE.match(stripped):
            continue
        header_idx = i
        break

    if header_idx is None:
        raise ValueError(f"Could not locate the column header row in: {path}")

    reader = csv.DictReader(lines[header_idx:])
    columns = [f.strip() for f in (reader.fieldnames or [])]
    rows = [
        {k.strip(): (v.strip() if v else "") for k, v in row.items()}
        for row in reader
    ]
    return columns, rows


# ---------------------------------------------------------------------------
# Transformation
# ---------------------------------------------------------------------------

_COMMENT_COLS = ("OL_COMMENTS", "KL_COMMENTS", "PL_COMMENTS")
_DNF_COLS     = ("DNF", "Do Not Fit")

# Columns whose content is merged into PART_DESCRIPTION / SUPPLIER / SUPPLIER_PART_NUMBER
# and then suppressed from the output (not written as their own columns).
_APPEND_PART_DESC_COLS = frozenset({"DESCRIPTION", "JEDEC_TYPE"})
_APPEND_SUPPLIER_COLS  = frozenset({"DISTRIBUTOR"})
_APPEND_SUPPLIER_PN_COLS = frozenset({"DISTRIBUTOR_PARTNUMBER"})

def transform(
    columns: list[str],
    rows: list[dict],
) -> tuple[list[str], list[dict]]:
    """
    Apply all three transformations and return updated (columns, rows).

    Column order in output:
      • OL_COMMENTS is replaced by COMMENTS at the same position.
      • KL_COMMENTS and PL_COMMENTS are removed.
      • All other columns are preserved in their original order.
    """
    # --- Build output column list -------------------------------------------
    _all_suppress = _APPEND_PART_DESC_COLS | _APPEND_SUPPLIER_COLS | _APPEND_SUPPLIER_PN_COLS
    columns_set = set(columns)

    out_cols: list[str] = []
    comments_placed = False
    dnf_placed = False
    for col in columns:
        if col in _COMMENT_COLS:
            if not comments_placed:
                out_cols.append("COMMENTS")
                comments_placed = True
            # else: drop the redundant comment columns
        elif col in _DNF_COLS:
            if not dnf_placed:
                out_cols.append("Do Not Fit")
                dnf_placed = True
            # else: drop the redundant DNF column
        elif col in _all_suppress:
            pass  # content merged into PART_DESCRIPTION / SUPPLIER / SUPPLIER_PART_NUMBER
        else:
            out_cols.append(col)
    if not comments_placed:
        out_cols.append("COMMENTS")   # safety: append if none of the three existed
    if "Technology" not in out_cols:
        out_cols.append("Technology")  # ensure column exists even if absent from source
    # Ensure PART_DESCRIPTION is present when we'll populate it from a suppressed column
    if "PART_DESCRIPTION" not in out_cols and (columns_set & _APPEND_PART_DESC_COLS):
        out_cols.append("PART_DESCRIPTION")
    out_cols.extend(["SUPPLIER", "SUPPLIER_PART_NUMBER"])

    # --- Process rows --------------------------------------------------------
    stats = {"generated": 0, "kept": 0, "skipped": 0, "supplier": 0}
    out_rows: list[dict] = []

    for row in rows:
        # Skip the TOTAL summary line (Ref Des is blank)
        if not row.get("Ref Des", "").strip():
            continue

        out_row: dict = {}

        # Pre-compute supplier info once per row
        _sup = generate_supplier_info(row.get("Part Name", ""))

        # Copy / merge columns
        for col in out_cols:
            if col == "COMMENTS":
                out_row["COMMENTS"] = merge_comments(
                    row.get("OL_COMMENTS", ""),
                    row.get("KL_COMMENTS", ""),
                    row.get("PL_COMMENTS", ""),
                )
            elif col == "Do Not Fit":
                out_row["Do Not Fit"] = merge_dnf(
                    row.get("DNF", "?"),
                    row.get("Do Not Fit", "?"),
                )
            elif col == "SUPPLIER":
                out_row["SUPPLIER"] = _sup[0] if _sup else ""
            elif col == "SUPPLIER_PART_NUMBER":
                out_row["SUPPLIER_PART_NUMBER"] = _sup[1] if _sup else ""
                if _sup:
                    stats["supplier"] += 1
            else:
                out_row[col] = row.get(col, "")

        # Replace placeholder PART_NUMBER with Part Name
        if out_row.get("PART_NUMBER", "").strip() in EMPTY_VALUES:
            out_row["PART_NUMBER"] = row.get("Part Name", "")

        # Set Technology based on Do Not Fit status
        if out_row.get("Do Not Fit") == "TRUE":
            out_row["Technology"] = "UNPLACED"
        else:
            out_row["Technology"] = "SMD"

        # Generate PART_DESCRIPTION where missing
        existing_desc = out_row.get("PART_DESCRIPTION", "").strip()
        if existing_desc in EMPTY_VALUES:
            generated = generate_description(row.get("Part Name", ""))
            if generated:
                out_row["PART_DESCRIPTION"] = generated
                stats["generated"] += 1
            else:
                stats["skipped"] += 1
        else:
            stats["kept"] += 1

        # Append DESCRIPTION and JEDEC_TYPE to PART_DESCRIPTION
        for src_col in ("DESCRIPTION", "JEDEC_TYPE"):
            if src_col in columns_set:
                out_row["PART_DESCRIPTION"] = _append_field(
                    out_row.get("PART_DESCRIPTION", ""),
                    row.get(src_col, ""),
                    ", ",
                )

        # Append DISTRIBUTOR to SUPPLIER
        for src_col in ("DISTRIBUTOR",):
            if src_col in columns_set:
                out_row["SUPPLIER"] = _append_field(
                    out_row.get("SUPPLIER", ""),
                    row.get(src_col, ""),
                )

        # Append DISTRIBUTOR_PARTNUMBER to SUPPLIER_PART_NUMBER
        for src_col in ("DISTRIBUTOR_PARTNUMBER",):
            if src_col in columns_set:
                out_row["SUPPLIER_PART_NUMBER"] = _append_field(
                    out_row.get("SUPPLIER_PART_NUMBER", ""),
                    row.get(src_col, ""),
                )

        out_rows.append(out_row)

    return out_cols, out_rows, stats


# ---------------------------------------------------------------------------
# Output
# ---------------------------------------------------------------------------

def write_output(path: Path, columns: list[str], rows: list[dict]) -> None:
    with path.open("w", newline="", encoding="utf-8") as fh:
        writer = csv.DictWriter(fh, fieldnames=columns, extrasaction="ignore")
        writer.writeheader()
        writer.writerows(rows)


# ---------------------------------------------------------------------------
# CLI
# ---------------------------------------------------------------------------

def main() -> None:
    parser = argparse.ArgumentParser(
        description="Transform an Allegro BOM: merge comments, generate part descriptions."
    )
    parser.add_argument(
        "--input", required=True, type=Path,
        help="Path to the Allegro BOM CSV (grouped or one-per-line).",
    )
    parser.add_argument(
        "--output", type=Path, default=None,
        help="Output CSV path (default: <input_stem>_transformed.csv).",
    )
    args = parser.parse_args()

    if not args.input.exists():
        sys.exit(f"ERROR: Input file not found: {args.input}")

    out_path = args.output or args.input.with_name(
        args.input.stem + "_transformed.csv"
    )

    columns, rows = parse_bom(args.input)
    out_cols, out_rows, stats = transform(columns, rows)
    write_output(out_path, out_cols, out_rows)

    print(f"\nOutput written to: {out_path}")
    print(f"  Rows written                    : {len(out_rows)}")
    print(f"  PART_DESCRIPTION kept (existing): {stats['kept']}")
    print(f"  PART_DESCRIPTION generated      : {stats['generated']}")
    print(f"  PART_DESCRIPTION still missing  : {stats['skipped']}")
    print(f"  Supplier part numbers generated : {stats['supplier']}")
    print()

    # Show every generated description so the user can verify
    if stats["generated"]:
        print("Generated descriptions:")
        for row in out_rows:
            desc = row.get("PART_DESCRIPTION", "")
            if desc and desc.startswith(("Capacitor,", "Resistor,")):
                print(f"  {row.get('Ref Des',''):30s}  {desc}")


if __name__ == "__main__":
    main()
