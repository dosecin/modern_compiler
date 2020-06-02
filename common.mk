obj = $(patsubst %.c, %.o, $(wildcard *.c))
utilobj ?= ../util.o
utildir ?= ../util
CFLAGS = -I $(utildir)

.PHONY: all
all: util $(obj) $(target)

.PHONY: util
util:
	@make -C ../

%.o: %.c
	gcc -g -c $^ $(CFLAGS)

$(target): $(obj) $(utilobj)
	gcc -o $@ $^ $(CFLAGS)

.PHONY: clean
clean:
	rm -f $(obj) $(target)

.PHONY: cleanall
cleanall:
	rm -f $(obj) $(target) $(utilobj)