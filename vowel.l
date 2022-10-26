%{
#include<stdio.h>
#include<stdlib.h>
num=0,key=0;
%}


%%
int|main|char|include {(key++);}
[0-9]+ {(num++);}
[aeiouAEIOU] {printf ("\n%s is a vowel\n",yytext);}
[a-zA-Z]+ {printf ("\n%s is a consonent\n",yytext);}
[=|,|#|/|\|(|)|<|>] {printf ("\n%s is a special character\n",yytext);}
[-|+|*] {printf ("\n%s is a arithematic operator\n",yytext);}
./n 
%%

int yywrap(){
return 1;
}

void main(){
yyin=fopen("sample.txt","r");
yylex();
printf("\nCount of numbers %d\n",num);
printf("Count of keywords %d",key);
fclose(yyin);
}
