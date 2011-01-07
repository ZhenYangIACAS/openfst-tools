# Makefile
# 
# used b/c every one has make and everyone can probably modify this Makefile to suite their specific system requirements
#
# chris taylor
#
CC=g++
LIBS=-ldl -lfst
OUT=fstprintpaths
EXTRA= # add any -I -L modifications here...

OBJS=fstprintpaths.o

all: fstprintpaths-main

utils.o: utils.cpp
	$(CC) utils.cpp $(EXTRA) -c -o utils.o

fstprintpaths.o: utils.o fstprintpaths.cpp
	$(CC) fstprintpaths.cpp $(EXTRA) -c -o fstprintpaths.o

fstprintpaths-main: fstprintpaths.o fstprintpaths-main.cpp
	$(CC) fstprintpaths-main.cpp $(LIBS) $(EXTRA) $(OBJS) -o $(OUT) 
clean:
	rm $(OUT) *.o 
