#include <stdio.h>
#include "tokens.h"
#include "util.h"

int yylex(void);
extern FILE *yyin;
extern int yy_line;
extern int yy_column;

string toknames[] = {
    "<unknow_token>", "while", "for", "to", "break", "let", "in", 
    "end", "func", "var", "type", "array", "if", "then", 
    "else", "do", "of", "nil",
};

string symnames[] = {
    "<unknow_symbol>", "<iden>", "<string>", "<int>", "<real>", ",", 
    ":", ";", "(", ")", "[", "]", "{", "}", ".","+", "-", "*", 
    "/", "%", "=", "!=", "<", "<=", ">", ">=", "&", "|", ":=",
};

string name(int tok) {
    if (tok <= _BEGIN || tok >= _TOKEN_END) {
        return "BAD_TOKEN";
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
        if (tok == 0) break;
        if (tok == L_NEWLINE || tok == L_WHITESPACE) continue;
        printf("line:%d-%d\t%s\n", yy_line, yy_column, name(tok));
    }
    return 0;
}