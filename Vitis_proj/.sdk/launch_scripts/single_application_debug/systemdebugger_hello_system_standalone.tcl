connect -url tcp:127.0.0.1:3121
targets -set -nocase -filter {name =~"APU*"}
rst -system
after 3000
targets -set -filter {jtag_cable_name =~ "Digilent Zed 210248552874" && level==0} -index 1
fpga -file D:/FPGA/ADS_bus_CS/Vitis_proj/hello/_ide/bitstream/design_1_wrapper.bit
targets -set -nocase -filter {name =~"APU*"}
loadhw -hw D:/FPGA/ADS_bus_CS/Vitis_proj/ADS_bus_CS_new/export/ADS_bus_CS_new/hw/design_1_wrapper.xsa -mem-ranges [list {0x40000000 0xbfffffff}]
configparams force-mem-access 1
targets -set -nocase -filter {name =~"APU*"}
source D:/FPGA/ADS_bus_CS/Vitis_proj/hello/_ide/psinit/ps7_init.tcl
ps7_init
ps7_post_config
targets -set -nocase -filter {name =~ "*A9*#0"}
dow D:/FPGA/ADS_bus_CS/Vitis_proj/hello/Debug/hello.elf
configparams force-mem-access 0
targets -set -nocase -filter {name =~ "*A9*#0"}
con
