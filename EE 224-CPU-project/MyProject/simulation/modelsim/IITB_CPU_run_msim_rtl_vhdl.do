transcript on
if {[file exists rtl_work]} {
	vdel -lib rtl_work -all
}
vlib rtl_work
vmap work rtl_work

vcom -93 -work work {C:/Users/Satush/OneDrive - Indian Institute of Technology Bombay/3rd sem/EE 224/Project/MyProject/RF.vhdl}
vcom -93 -work work {C:/Users/Satush/OneDrive - Indian Institute of Technology Bombay/3rd sem/EE 224/Project/MyProject/Mem_Shubham.vhdl}
vcom -93 -work work {C:/Users/Satush/OneDrive - Indian Institute of Technology Bombay/3rd sem/EE 224/Project/MyProject/IITB_CPU.vhdl}
vcom -93 -work work {C:/Users/Satush/OneDrive - Indian Institute of Technology Bombay/3rd sem/EE 224/Project/MyProject/ALU.vhdl}

