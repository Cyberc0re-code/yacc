%{ 
#include<stdio.h> 
#include<stdlib.h> 
#include"y.tab.h" 
extern int yylval; 
%} 

%% 
0 {yylval=0;return zero;} 
1 {yylval=1;return one;} 
\n return 0; 
. return yytext[0]; 
%% 

	
int yywrap() 
{ 
return 1; 
} 

