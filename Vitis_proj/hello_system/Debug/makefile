#
# This file was created by Xilinx Vitis tool.
#


#
# tools
#

RM = rm -f
RMDIR = rm -rf

#
# variables
#

SDCARD_GEN = sdcard_gen
GENERATE_BIF = ::scw::generate_bif

XPFM_PATH = D:/FPGA/ADS_bus_CS/Vitis_proj/ADS_bus_CS_new/export/ADS_bus_CS_new/ADS_bus_CS_new.xpfm
SYS_CONFIG = ADS_bus_CS_new
DOMAINS = standalone_domain
BIF_PATH = D:/FPGA/ADS_bus_CS/Vitis_proj/hello_system/Debug/system.bif

BITSTREAM_PATH = D:/FPGA/ADS_bus_CS/Vitis_proj/hello/_ide/bitstream/design_1_wrapper.bit
SD_FILES = --elf D:/FPGA/ADS_bus_CS/Vitis_proj/hello/Debug/hello.elf,ps7_cortexa9_0

#
# primary build targets
#

all: sd_card

sd_card:
	-@echo Generating bif file for the system project
	generate_system_bif.bat 56042 ${XPFM_PATH} ${DOMAINS} ${BIF_PATH}
	${SDCARD_GEN} --xpfm ${XPFM_PATH} --sys_config ${SYS_CONFIG} --bif ${BIF_PATH} --bitstream ${BITSTREAM_PATH} ${SD_FILES}

clean:
	$(RMDIR) ./_sds
	${RMDIR} sd_card
	${RM} system.bif

.PHONY: all sd_card clean


