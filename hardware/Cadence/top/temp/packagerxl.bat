echo off
netassembler
concept2cm -forward -export -proj "\\ppfs6.physics.ox.ac.uk\CEG\Central Electronics\Projects\Hastingsp\DUNE\uob-hep-pc072-new2\hardware\Cadence\top\front_panel_jtag_serial.cpm"
pxl.exe -proj "\\ppfs6.physics.ox.ac.uk\CEG\Central Electronics\Projects\Hastingsp\DUNE\uob-hep-pc072-new2\hardware\Cadence\top\front_panel_jtag_serial.cpm" -nosavehier
