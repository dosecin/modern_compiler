#include <stdio.h>
#include "tokens.h"
#include "util.h"

int yylex(void);
extern FILE *yyin;

string toknames[] = {
    "<unknow>", "while", "for", "to", "break", "let", "in", 
    "end", "func", "var", "type", "array", "if", "then", 
    "else", "do", "of", "nil",
};

string symnames[] = {
    "<unknow>", "<iden>", "<string>", "<int>", "<real>", ",", 
    ":", ";", "(", ")", "[", "]", "{", "}", ".","+", "-", "*", 
    "/", "%", "=", "!=", "<", "<=", ">", ">=", "&", "|", ":=",
};

string name(int tok) {
    if (tok <= _BEGIN || tok >= _TOKEN_END) {
        return "BAT_TOKEN";
    }
    if (tok < _TOKEN_BEGIN) {
        return symnames[tok-_BEGIN];
    }
    return toknames[tok-_TOKEN_BEGIN];
}

int main(int argc, char **argv) {
    string fname;
    int tok;
    if (argc != 2) {
        fprintf(stderr, "usage: lex.exe filename\n");
        exit(1);
    }
    fname = argv[1];
    yyin = fopen(fname, "r");
    while (1) {
        tok = yylex();
        if(tok == 0) break;
        printf("%10s\n", name(tok));
    }
    return 0;
}