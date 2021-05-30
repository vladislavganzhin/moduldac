transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Vladislav/Start/Study at LETU/d/d2/Diploma/Project/moduldac_wrap.vhd}

vcom -93 -work work {C:/Users/Vladislav/Start/Study at LETU/d/d2/Diploma/Project/moduldac_tb.vhd}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L fiftyfivenm -L rtl_work -L work -voptargs="+acc"  moduldac_tb

do C:/Users/Vladislav/Start/Study at LETU/d/d2/Diploma/Project/modelsim.tcl