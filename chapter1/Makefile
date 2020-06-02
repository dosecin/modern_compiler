a.exe: util.o slp.o prog.o main.o
	gcc -g $^

%.o: %.c
	gcc -g -c $^

clean:
	rm -f a.exe *.o