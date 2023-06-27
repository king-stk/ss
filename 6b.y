%{
#include<stdio.h>
%}
%token L D NL
%%
var: L E NL {printf("Valid Variable\n");return 0;}
E: E L
| E D
| ;
%%
int yyerror()
{
printf("\n Invalid Variable\n");
return 0;
}
int main()
{
printf("\nEnter a variable\n");
yyparse();
}
