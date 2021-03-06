transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/rafae/Documents/Desenvolvimento/Terminal_Remoto/hex_decoder_display.vhd}
vcom -93 -work work {C:/Users/rafae/Documents/Desenvolvimento/Terminal_Remoto/db/Terminal_Remoto.vhd}
vcom -93 -work work {C:/Users/rafae/Documents/Desenvolvimento/Terminal_Remoto/data_receiver.vhd}

vcom -93 -work work {C:/Users/rafae/Documents/Desenvolvimento/Terminal_Remoto/testbench.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L cycloneii -L rtl_work -L work -voptargs="+acc"  testbench

add wave *
view structure
view signals
run -all
