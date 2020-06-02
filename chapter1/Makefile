obj = $(patsubst %.c, %.o, $(wildcard *.c))
target = chapter1.exe

all: $(obj) $(target)

%.o: %.c
	gcc -g -c $^

$(target): $(obj)
	gcc -g $^ -o $@

.PHONY: clean
clean:
	rm -f $(obj) $(target)