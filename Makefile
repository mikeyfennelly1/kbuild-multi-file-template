obj-m += start.o stop.o

PROJ_ROOT:=$(shell pwd)
SRCS:=$(PROJ_ROOT)/src
SCRIPTS:=$(PROJ_ROOT)/scripts
BUILD:=$(PROJ_ROOT)/build

all: $(BUILD)
	make -C /lib/modules/$(shell uname -r)/build M=$(SRCS) modules
	cd $(SRCS)
	$(SCRIPTS)/post_build_cleanup.sh

clean:
	rm -rf build

clean_scraps:
	make -C /lib/modules/$(shell uname -r)/build M=$(PROJ_ROOT) clean

$(BUILD):
	@mkdir -p ./build