echo off
netassembler
concept2cm -forward -export -proj "C:\Users\phdgc\Downloads\uob-hep-pc072\hardware\Cadence\top\top_mib_v3.cpm"
pxl.exe -proj "C:\Users\phdgc\Downloads\uob-hep-pc072\hardware\Cadence\top\top_mib_v3.cpm" -nosavehier
