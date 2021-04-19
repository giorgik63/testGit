CC = gcc

all: testD testR

testD: main.o
	gcc -c -g -Wall main.c
	gcc -o testD main.o

testR: main.o
	gcc -c -O2 -Wall main.c
	gcc -o testR main.o

clean: main.o testD testR
	rm $^

PHONY.: clean
