utildir = ../util
CFLAGS = -I $(utildir)
obj += util.o

util.o: $(utildir)/util.c
	gcc -g -c $^ $(CFLAGS)