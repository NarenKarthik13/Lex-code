%{
#include <stdio.h>
%}

%%
"/*"([^*]*|\*+[^*/])*"*"+"/" { printf("COMMENT: %s\n", yytext); }
[ \t\n]+                     { /* ignore whitespace */ }
.                            { printf("OTHER: %s\n", yytext); }
%%

int main() {
    yylex();
    return 0;
}

