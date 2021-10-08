transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {/home/winston/Documents/Acads/EE214/Tue_EXP2/Gates.vhd}
vcom -93 -work work {/home/winston/Documents/Acads/EE214/Tue_EXP2/DUT.vhd}
vcom -93 -work work {/home/winston/Documents/Acads/EE214/Tue_EXP2/vowel.vhd}

vcom -93 -work work {/home/winston/Documents/Acads/EE214/Tue_EXP2/Testbench.vhdl}

vsim -t 1ps -L altera -L lpm -L sgate -L altera_mf -L altera_lnsim -L maxv -L rtl_work -L work -voptargs="+acc"  Testbench

add wave *
view structure
view signals
run -all
