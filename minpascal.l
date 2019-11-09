%option noyywrap 
%option yylineno
%{

// minpascal.l 
// Original source code by Glenn Fabia 
// Modified by Kevin Baldo for MinPascal
//
// This file contains the lexical specifications for the minpascal language

#include "global.h"
#include <string>



%}

digit	[0-9]
intlit	[\-]?{digit}+
letter  [a-zA-Z]
id      ({letter}|_)({letter}|{digit}|_)*
strlit  \'([^\'])*\'
fltlit  [\-]?{digit}+\.{digit}+
comment \{([^\'\{\}])*\}
absfunc abs\(({intlit}|{fltlit})\)
exprfunc expr\(({intlit}|{fltlit})\)
sqrtfunc    sqrt\(({intlit}|{fltlit})\)
array   {id}\[({intlit}?|{id}?)\]
whitespace [ ]|[ \t]
compop  [=><]
compops [!=]?{compop}?{compop}

%%
{whitespace} {tokenName = "WHITESPACE"; return WHITESPACE; cout << "WHITESPACE"; }
";"	        { tokenName = "SEMICOLON"; return SEMICOLON; cout << "SEMICOLON"; }
":="	    { tokenName = "ASSIGNOP"; return ASSIGNOP; cout << "ASSIGNOP"; }
":"	        { tokenName = "COLON"; return COLON; cout << "COLON"; }
"("	        { tokenName = "OPENPAR"; return OPENPAR; cout << "OPENPAR"; }
")"	        { tokenName = "CLOSEPAR"; return CLOSEPAR; cout << "CLOSEPAR"; }
","	        { tokenName = "COMMA"; return COMMA; cout << "COMMA"; }
"start"	    { tokenName = "START"; return START; cout << "START"; }
"end"       { tokenName = "END"; return END; cout << "END"; }
"var"       { tokenName = "VAR"; return VAR; cout << "VAR"; }
"writeln"   { tokenName = "WRITELN"; return WRITELN; cout << "WRITELN"; }
"write"     { tokenName = "WRITE"; return WRITE; cout << "WRITE"; }
"readln"    { tokenName = "READLN"; return READLN; cout << "READLN"; }
"integer"   { tokenName = "INTEGER"; return INTEGER; cout << "INTEGER"; }
"string"    { tokenName = "STRING"; return STRING; cout << "STRING"; }
"float"     { tokenName = "FLOAT"; return FLOAT; cout << "FLOAT"; }
{strlit}    { tokenName = "STRLIT"; return STRLIT; cout << "STRLIT"; }
{intlit}	{ tokenName = "INTLIT"; return INTLIT; cout << "INTLIT"; }
{fltlit}	{ tokenName = "FLTLIT"; return FLTLIT; cout << "FLTLIT"; }
{comment}	{ tokenName = "COMMENT"; return COMMENT; cout << "COMMENT"; }
"+"         { tokenName = "ADD"; return ADD; cout << "ADD"; }
"-"         { tokenName = "SUBTRACT"; return SUBTRACT; cout << "SUBTRACT"; }
"*"         { tokenName = "MULTIPLY"; return MULTIPLY; cout << "MULTIPLY"; }
"/"         { tokenName = "DIVIDE"; return DIVIDE; cout << "DIVIDE"; }
"if"        { tokenName = "IFCOND"; return IFCOND; cout << "IFCOND"; }
"then"      { tokenName = "THENCOND"; return THENCOND; cout << "THENCOND"; }
"else"      { tokenName = "ELSECOND"; return ELSECOND; cout << "ELSECOND"; }
"report"    { tokenName = "REPORT"; return REPORT; cout << "REPORT"; }
"until"     { tokenName = "UNTIL"; return UNTIL; cout << "UNTIL"; }
"for"       { tokenName = "FORCOND"; return FORCOND; cout << "FORCOND"; }
"to"        { tokenName = "TOCOND"; return TOCOND; cout << "TOCOND"; }
"do"        { tokenName = "DOCOND"; return DOCOND; cout << "DOCOND"; }
"while"     { tokenName = "WHILECOND"; return WHILECOND; cout << "WHILECOND"; }
{absfunc}   { tokenName = "ABSFUNC"; return ABSFUNC; cout << "ABSFUNC"; }
{exprfunc}  { tokenName = "EXPRFUNC"; return EXPRFUNC; cout << "EXPRFUNC"; }
{sqrtfunc}  { tokenName = "SQRTFUNC"; return SQRTFUNC; cout << "SQRTFUNC"; }
{array}     { tokenName = "ARRAY"; return ARRAY; cout << "ARRAY"; }
{id}        { tokenName = "ID"; return ID; cout << "ID"; }
{compops}   { tokenName = "COMPOP"; return COMPOP; cout << "COMPOP"; }

\n { }
.		{ cout << "Error: invalid symbol '" << YYText()[0] << "' encountered at line " << yylineno << endl;}
