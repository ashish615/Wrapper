#https://www.ibm.com/docs/en/zos/2.2.0?topic=descriptions-ar-create-maintain-library-archives
# Makefile for Writing Make Files Example
 
# *****************************************************
# Variables to control Makefile operation
 
CC = g++
#CFLAGS = -Wall -g
 
default: libhello.a

libhello.a: hello.o
	ar rcs $@ $^
# ****************************************************
# Targets needed to bring the executable up to date

 
# The main.o target can be written more simply
 
hello.o: hello.cpp hello.h
	$(CC) -c $<

clean:
	rm *.o *.a
	
