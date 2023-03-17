echo off
netassembler
concept2cm -forward -export -proj "C:\pc072local\uob-hep-pc072\hardware\Cadence\top\top.cpm"
pxl.exe -proj "C:\pc072local\uob-hep-pc072\hardware\Cadence\top\top.cpm" -nosavehier
