set_property PACKAGE_PIN U2 [get_ports {An[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {An[0]}]

set_property PACKAGE_PIN U4 [get_ports {An[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {An[1]}]

set_property PACKAGE_PIN V4 [get_ports {An[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {An[2]}]

set_property PACKAGE_PIN W4 [get_ports {An[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {An[3]}]



set_property PACKAGE_PIN U7 [get_ports {Cth[6]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[6]}]

set_property PACKAGE_PIN V5 [get_ports {Cth[5]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[5]}]

set_property PACKAGE_PIN U5 [get_ports {Cth[4]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[4]}]

set_property PACKAGE_PIN V8 [get_ports {Cth[3]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[3]}]

set_property PACKAGE_PIN U8 [get_ports {Cth[2]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[2]}]

set_property PACKAGE_PIN W6 [get_ports {Cth[1]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[1]}]

set_property PACKAGE_PIN W7 [get_ports {Cth[0]}]
set_property IOSTANDARD LVCMOS33 [get_ports {Cth[0]}]



set_property PACKAGE_PIN V17 [get_ports {En}]
set_property IOSTANDARD LVCMOS33 [get_ports {En}]

set_property PACKAGE_PIN W19 [get_ports {RST}]
set_property IOSTANDARD LVCMOS33 [get_ports {RST}]




set_property PACKAGE_PIN W5 [get_ports {clk}]
set_property IOSTANDARD LVCMOS33 [get_ports {clk}]
create_clock -add -name sys.clk.pin -period 10.00 -waveform {0 5} [get_ports {clk}]