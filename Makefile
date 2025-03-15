obj-m += start.o stop.o

PWD:=$(shell pwd)
BUILD:=$(PWD)/build

all: $(BUILD)
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) modules
	./post_build_cleanup.sh
clean:
	make -C /lib/modules/$(shell uname -r)/build M=$(PWD) clean

$(BUILD):
	@mkdir -p ./build