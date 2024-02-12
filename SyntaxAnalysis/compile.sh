#!/bin/sh
lex parser.l
yacc -d parser.y
gcc lex.yy.c y.tab.c -w -g
./a.out input.c
rm y.tab.c y.tab.h lex.yy.c