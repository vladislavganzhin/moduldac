onerror {resume}
quietly WaveActivateNextPane {} 0
add wave -noupdate /moduldac_tb/moduldac/i_clk
add wave -noupdate /moduldac_tb/update
add wave -noupdate /moduldac_tb/moduldac/start
add wave -noupdate /moduldac_tb/moduldac/enable
add wave -noupdate /moduldac_tb/moduldac/counter
add wave -noupdate /moduldac_tb/moduldac/o_sync_dac
add wave -noupdate /moduldac_tb/moduldac/o_clock_dac
add wave -noupdate /moduldac_tb/moduldac/data_dac
add wave -noupdate /moduldac_tb/moduldac/data
add wave -noupdate /moduldac_tb/moduldac/done
add wave -noupdate /moduldac_tb/moduldac/o_ldac_dac
add wave -noupdate /moduldac_tb/moduldac/mask_ldac
add wave -noupdate /moduldac_tb/moduldac/mask_update
add wave -noupdate /moduldac_tb/moduldac/wrt
add wave -noupdate /moduldac_tb/moduldac/o_data_dac
add wave -noupdate /moduldac_tb/moduldac/trn_data
add wave -noupdate /moduldac_tb/moduldac/State
add wave -noupdate /moduldac_tb/moduldac/update_all
add wave -noupdate /moduldac_tb/moduldac/num_ch
add wave -noupdate /moduldac_tb/moduldac/i_channel
add wave -noupdate /moduldac_tb/moduldac/i_data_att1_dac
add wave -noupdate /moduldac_tb/moduldac/i_data_att2_dac
add wave -noupdate /moduldac_tb/moduldac/i_data_maam_i
add wave -noupdate /moduldac_tb/moduldac/i_data_maam_g
add wave -noupdate /moduldac_tb/moduldac/data_A
add wave -noupdate /moduldac_tb/moduldac/data_B
add wave -noupdate /moduldac_tb/moduldac/data_C
add wave -noupdate /moduldac_tb/moduldac/data_D
TreeUpdate [SetDefaultTree]
WaveRestoreCursors {{Cursor 1} {1247420107 ps} 0}
quietly wave cursor active 1
configure wave -namecolwidth 226
configure wave -valuecolwidth 155
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
WaveRestoreZoom {0 ps} {5092773 ns}
