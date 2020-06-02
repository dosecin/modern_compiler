obj = $(patsubst %.c, %.o, $(wildcard *.c))
target = chapter1.exe

all: $(obj) $(target)

include ../util/util.mk

%.o: %.c
	gcc -g -c $^ $(CFLAGS)

$(target): $(obj)
	gcc -g $^ -o $@

.PHONY: clean
clean:
	rm -f $(obj) $(target)