%{
#include <string.h>
#include "tokens.h"

int yy_line = 1;
int yy_column = 1;
int _yy_column = 1;

int yywrap(void)
{
    return 1;
}

void update()
{
    yy_column = _yy_column;
   _yy_column += strlen(yytext); 
}
%}

%%
while   {update(); return L_WHILE;}
for {update(); return L_FOR;}
to  {update(); return L_TO;}
break   {update(); return L_BREAK;}
let {update(); return L_LET;}
in  {update(); return L_IN;}
end {update(); return L_END;}
func    {update(); return L_FUNC;}
var {update(); return L_VAR;}
type    {update(); return L_TYPE;}
array   {update(); return L_ARRAY;}
if  {update(); return L_IF;}
then    {update(); return L_THEN;}
else    {update(); return L_ELSE;}
do  {update(); return L_DO;}
of  {update(); return L_OF;}
nil {update(); return L_NIL;}
\n  {yy_line++; yy_column = 1; _yy_column = 1; return L_NEWLINE;}
[ \t\r\v\f]*  {update(); return L_WHITESPACE;}
","   {update(); return L_COMMA;}
":"   {update(); return L_COLON;}
";"   {update(); return L_SEMI;}
"(" {update(); return L_LPAREN;}
")" {update(); return L_RPAREN;}
"[" {update(); return L_LBRACK;}
"]" {update(); return L_RBRACK;}
"{" {update(); return L_LBRACE;}
"}" {update(); return L_RBRACE;}
"." {update(); return L_DOT;}
"+" {update(); return L_PLUS;}
"-" {update(); return L_MINUS;}
"*" {update(); return L_STAR;}
"/" {update(); return L_DIVIDE;}
"%" {update(); return L_MOD;}
"=" {update(); return L_EQ;}
"!="    {update(); return L_NEQ;}
"<" {update(); return L_LT;}
"<="    {update(); return L_LE;}
">" {update(); return L_GT;}
">="    {update(); return L_GE;}
"&" {update(); return L_AND;}
"|" {update(); return L_OR;}
":="    {update(); return L_ASSIGN;}
[a-zA-Z_]+[a-zA-Z_0-9]* {update(); return L_IDENT;}
[0-9]+  {update(); return L_INT;}
[0-9]*\.[0-9]+  {update(); return L_REAL;}
\".*\"  {update(); return L_STRING;}
