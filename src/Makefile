obj-m += sysinfo.o

sysinfo-objs := job.o procfs.o sysinfo_dev.o

PROJ_ROOT:=.. 
SCRIPTS:=$(PROJ_ROOT)/scripts
BUILD:=$(PROJ_ROOT)/build

all: $(BUILD)
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	$(SCRIPTS)/post_build_cleanup.sh

clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

$(BUILD):
	@mkdir -p ./build