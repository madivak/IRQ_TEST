obj-m += irqButton_to_LED.o

ARCH  := arm
CROSS := arm-linux-gnueabihf-
KDIR  := /home/nivek/SOURCES/linux-4.3.2/
PWD := $(shell pwd)

all: 
	make ARCH=$(ARCH) CROSS_COMPILE=$(CROSS) -C $(KDIR) M=$(PWD) modules

clean:
	make -C $(KDIR) M=$(PWD) clean
