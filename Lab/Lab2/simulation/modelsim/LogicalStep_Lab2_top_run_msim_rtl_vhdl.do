transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {N:/1b/ECE124/Lab/Lab2/mux.vhd}
vcom -93 -work work {N:/1b/ECE124/Lab/Lab2/LogicalStep_Lab2_top.vhd}
vcom -93 -work work {N:/1b/ECE124/Lab/Lab2/segment7_mux.vhd}
vcom -93 -work work {N:/1b/ECE124/Lab/Lab2/SevenSegment.vhd}
vcom -93 -work work {N:/1b/ECE124/Lab/Lab2/adder4.vhd}
vcom -93 -work work {N:/1b/ECE124/Lab/Lab2/processor.vhd}

