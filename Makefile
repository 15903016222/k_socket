obj-m +=server.o
obj-m +=client.o

all:
	make -C /lib/modules/`uname -r`/build SUBDIRS=$(PWD) modules
clean:
	make -C /lib/modules/`uname -r`/build SUBDIRS=$(PWD) clean
