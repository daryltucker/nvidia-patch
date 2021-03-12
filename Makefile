KVERSION := $(KERNELRELEASE)
ifeq ($(origin KERNELRELEASE), undefined)
KVERSION := $(shell uname -r)
endif
KDIR := /lib/modules/$(KVERSION)/build
PWD := $(shell pwd)

all:
	echo "make is not used for normal installation"

dkms_clean:
	$(shell ./patch.sh -sr)
	#git fetch --all; git clean -xdf; git reset --hard origin/master

dkms_install:
	#git fetch --all; git reset --hard origin/master
	$(shell ./patch.sh -s)
	touch nvidia-patch.ko
