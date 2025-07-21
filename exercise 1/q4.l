%{
#include <stdio.h>
%}

%%
"if"      { printf("KEYWORD: if\n"); }
"else"    { printf("KEYWORD: else\n"); }
"while"   { printf("KEYWORD: while\n"); }
[a-zA-Z_][a-zA-Z0-9_]* { printf("IDENTIFIER: %s\n", yytext); }
[ \t\n]+               { /* ignore whitespace */ }
.                      { printf("UNKNOWN: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

