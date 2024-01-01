onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /seq_det_tb/clk
add wave -noupdate /seq_det_tb/rst
add wave -noupdate /seq_det_tb/serIn
add wave -noupdate /seq_det_tb/w_pre
add wave -noupdate /seq_det_tb/w_post
add wave -noupdate /seq_det_tb/my_det_pre/ps
add wave -noupdate /seq_det_tb/my_det_pre/ns
add wave -noupdate /seq_det_tb/my_det_post/gnd
add wave -noupdate /seq_det_tb/my_det_post/vcc
add wave -noupdate /seq_det_tb/my_det_post/unknown
add wave -noupdate /seq_det_tb/my_det_post/devclrn
add wave -noupdate /seq_det_tb/my_det_post/devpor
add wave -noupdate /seq_det_tb/my_det_post/devoe
add wave -noupdate {/seq_det_tb/my_det_post/\w~output_o }
add wave -noupdate {/seq_det_tb/my_det_post/\clk~input_o }
add wave -noupdate {/seq_det_tb/my_det_post/\clk~inputclkctrl_outclk }
add wave -noupdate {/seq_det_tb/my_det_post/\serIn~input_o }
add wave -noupdate {/seq_det_tb/my_det_post/\Selector1~0_combout }
add wave -noupdate {/seq_det_tb/my_det_post/\rst~input_o }
add wave -noupdate {/seq_det_tb/my_det_post/\rst~inputclkctrl_outclk }
add wave -noupdate {/seq_det_tb/my_det_post/\ps.B~q }
add wave -noupdate {/seq_det_tb/my_det_post/\Selector2~0_combout }
add wave -noupdate {/seq_det_tb/my_det_post/\ps.C~q }
add wave -noupdate {/seq_det_tb/my_det_post/\ns.D~0_combout }
add wave -noupdate {/seq_det_tb/my_det_post/\ps.D~q }
add wave -noupdate {/seq_det_tb/my_det_post/\ns.E~0_combout }
add wave -noupdate {/seq_det_tb/my_det_post/\ps.E~q }
add wave -noupdate {/seq_det_tb/my_det_post/\ns.F~0_combout }
add wave -noupdate {/seq_det_tb/my_det_post/\ps.F~q }
add wave -noupdate {/seq_det_tb/my_det_post/\ns.G~0_combout }
add wave -noupdate {/seq_det_tb/my_det_post/\ps.G~q }
add wave -noupdate {/seq_det_tb/my_det_post/\ns.H~0_combout }
add wave -noupdate {/seq_det_tb/my_det_post/\ps.H~q }
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {3406608 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 211
configure wave -valuecolwidth 100
configure wave -justifyvalue left
configure wave -signalnamewidth 0
configure wave -snapdistance 10
configure wave -datasetprefix 0
configure wave -rowmargin 4
configure wave -childrowmargin 2
configure wave -gridoffset 0
configure wave -gridperiod 1
configure wave -griddelta 40
configure wave -timeline 0
configure wave -timelineunits ns
update
WaveRestoreZoom {3122398 ps} {3835664 ps}
