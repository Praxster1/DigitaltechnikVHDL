onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /light_tb/sw
add wave -noupdate /light_tb/ledg0
add wave -noupdate /light_tb/ledr0
add wave -noupdate /light_tb/DUT/light_core_1/x1
add wave -noupdate /light_tb/DUT/light_core_1/x2
add wave -noupdate /light_tb/DUT/light_core_1/f
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3213 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 271
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 50
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {0 ps} {42 ns}
