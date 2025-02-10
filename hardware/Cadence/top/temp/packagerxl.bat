echo off
netassembler
concept2cm -forward -export -proj "\\ppfs6.physics.ox.ac.uk\CEG\Central Electronics\Projects\Hastingsp\DUNE\uob-hep-pc072\hardware\Cadence\top\top_mib_v3.cpm"
pxl.exe -proj "\\ppfs6.physics.ox.ac.uk\CEG\Central Electronics\Projects\Hastingsp\DUNE\uob-hep-pc072\hardware\Cadence\top\top_mib_v3.cpm" -nosavehier
