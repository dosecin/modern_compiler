%{
#include "tokens.h"

int yywrap(void)
{
    return 1;
}
%}

%%
while   {return L_WHILE;}
for {return L_FOR;}
to  {return L_TO;}
break   {return L_BREAK;}
let {return L_LET;}
in  {return L_IN;}
end {return L_END;}
func    {return L_FUNC;}
var {return L_VAR;}
type    {return L_TYPE;}
array   {return L_ARRAY;}
if  {return L_IF;}
then    {return L_THEN;}
else    {return L_ELSE;}
do  {return L_DO;}
of  {return L_OF;}
nil {return L_NIL;}
","   {return L_COMMA;}
":"   {return L_COLON;}
";"   {return L_SEMI;}
"(" {return L_LPAREN;}
")" {return L_RPAREN;}
"[" {return L_LBRACK;}
"]" {return L_RBRACK;}
"{" {return L_LBRACE;}
"}" {return L_RBRACE;}
"." {return L_DOT;}
"+" {return L_PLUS;}
"-" {return L_MINUS;}
"*" {return L_STAR;}
"/" {return L_DIVIDE;}
"=" {return L_EQ;}
"!="    {return L_NEQ;}
"<" {return L_LT;}
"<="    {return L_LE;}
">" {return L_GT;}
">="    {return L_GE;}
"&" {return L_AND;}
"|" {return L_OR;}
":="    {return L_ASSIGN;}
[a-zA-z_]+[a-zA-z_0-9]* {return L_IDENT;}
[0-9]+  {return L_INT;}
[0-9]*\.[0-9]+  {return L_REAL;}
"".*""  {return L_STRING;}
