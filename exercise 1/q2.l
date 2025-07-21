%{
#include <stdio.h>
%}

%%
"+"     { printf("PLUS\n"); }
"-"     { printf("MINUS\n"); }
"*"     { printf("MULTIPLY\n"); }
"/"     { printf("DIVIDE\n"); }
[ \t\n]+ { /* ignore whitespace */ }
.        { printf("UNKNOWN: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

