%{
#include<stdio.h>
#include<stdlib.h>
%}

%token A B NL
%%
stmt: A A A A S B NL {printf("valid string\n"); exit(0);}
;
S: S A
|
;
%%
int main(){
printf("enter the string\n");
yyparse();
return 0;
}
int yyerror(char *msg)
{
printf("invalid string\n");
exit(0);
}

