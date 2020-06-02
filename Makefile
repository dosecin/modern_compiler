utildir = ./util

util.o: $(utildir)/util.c
	gcc -g -c $^ -I $(utildir)