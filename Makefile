obj-m:= myled.o

myled.ko: myled.c
	make -C C/usr/src/linux M=`pwd` V=1 modules
clean:
	make -C C/usr/src/linux M=`pwd` V=1 clean
