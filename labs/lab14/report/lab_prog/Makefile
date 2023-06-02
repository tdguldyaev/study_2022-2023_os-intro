#
# Makefile
#
CC = gcc
CFLAGS =
LIBS = -lm
calcul: calculate.o main.o
	gcc calculate.o main.o -o calcul $(LIBS)
calculate.o: calculate.c calculate.h
	gcc -g -c calculate.c $(CFLAGS)
main.o: main.c calculate.h
	gcc -g -c main.c $(CFLAGS)
clean:
	rm -f calcul *.o
# End Makefile