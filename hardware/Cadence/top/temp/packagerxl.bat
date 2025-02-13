echo off
netassembler
concept2cm -forward -export -proj "C:\Users\phdgc\Downloads\uob-hep-pc072\hardware\Cadence\top\front_panel_jtag_serial.cpm"
pxl.exe -proj "C:\Users\phdgc\Downloads\uob-hep-pc072\hardware\Cadence\top\front_panel_jtag_serial.cpm" -nosavehier
