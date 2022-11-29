
set_property PACKAGE_PIN U2 [get_ports {An[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {An[0]}]

set_property PACKAGE_PIN U4 [get_ports {An[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {An[1]}]

set_property PACKAGE_PIN V4 [get_ports {An[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {An[2]}]

set_property PACKAGE_PIN W4 [get_ports {An[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {An[3]}]

set_property PACKAGE_PIN W7 [get_ports {Cth[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[6]}]

set_property PACKAGE_PIN W6 [get_ports {Cth[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[5]}]

set_property PACKAGE_PIN U8 [get_ports {Cth[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[4]}]

set_property PACKAGE_PIN V8 [get_ports {Cth[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[3]}]

set_property PACKAGE_PIN U5 [get_ports {Cth[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[2]}]

set_property PACKAGE_PIN V5 [get_ports {Cth[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[1]}]

set_property PACKAGE_PIN U7 [get_ports {Cth[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[0]}]


set_property PACKAGE_PIN R2 [get_ports {digit4[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit4[3]}]

set_property PACKAGE_PIN T1 [get_ports {digit4[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit4[2]}]

set_property PACKAGE_PIN U1 [get_ports {digit4[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit4[1]}]

set_property PACKAGE_PIN W2 [get_ports {digit4[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit4[0]}]


set_property PACKAGE_PIN R3 [get_ports {digit3[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit3[3]}]

set_property PACKAGE_PIN T2 [get_ports {digit3[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit3[2]}]

set_property PACKAGE_PIN T3 [get_ports {digit3[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit3[1]}]

set_property PACKAGE_PIN V2 [get_ports {digit3[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit3[0]}]


set_property PACKAGE_PIN W13 [get_ports {digit2[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit2[3]}]

set_property PACKAGE_PIN W14 [get_ports {digit2[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit2[2]}]

set_property PACKAGE_PIN V15 [get_ports {digit2[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit2[1]}]

set_property PACKAGE_PIN W15 [get_ports {digit2[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit2[0]}]


set_property PACKAGE_PIN W17 [get_ports {digit1[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit1[3]}]

set_property PACKAGE_PIN W16 [get_ports {digit1[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit1[2]}]

set_property PACKAGE_PIN V16 [get_ports {digit1[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit1[1]}]

set_property PACKAGE_PIN V17 [get_ports {digit1[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {digit1[0]}]




set_property PACKAGE_PIN W5 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
create_clock -add -name sys.clk.pin -period 10.00 -waveform {0 5} [get_ports {clk}]