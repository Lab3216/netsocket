# File: Makefile
# Author: Sami Metoui 
# Description: netsocket Makefile
# License: GPL 3 (http://www.gnu.org/licenses/gpl.html)

all: libnetsocket
	
libnetsocket: netsocket.o
	ar -rcs libnetsocket.a netsocket.o

netsocket.o: netsocket.c
	gcc -c -fPIC netsocket.c -o netsocket.o

clean:
	rm -rf *.o

mrproper: clean
	rm -rf libnetsocket.a