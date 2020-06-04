target = chapter2.exe
prec = flex
precobj = lex.yy.o

include ../common.mk

.PHONY: flex
flex:
	flex tiger.l
	gcc -g -c lex.yy.c