obj-m += fake_battery.o

KERN_VER := $(shell uname -r)

all:
	$(MAKE) -C /lib/modules/$(KERN_VER)/build M=$(shell pwd) modules

clean:
	rm -f *.cmd *.ko *.o Module.symvers modules.order *.mod.c

