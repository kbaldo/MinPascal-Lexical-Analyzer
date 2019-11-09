// main.cpp 
// Skeleton source code by Glenn Fabia 
// Handout for ICST252 Compiler Design and Implementation
// 2nd Semester S/Y 2016 -2017
// Edited by Kevin Baldo for ICST252, 1st Semester S/Y 2019-2020
//
// This is the driver program for cmn compiler


#include <iostream>
#include <fstream>
#include <string>
#include <FlexLexer.h>
#include "global.h"

using namespace std;



string tokenName;
int main (int argc, char* argv[]){

	char* file_in_name = argv[1];
	
	ifstream file_in(file_in_name);
	if(!file_in){
		cerr  << "Error: Cannot open file '" 
			<< file_in_name << "'" << endl;
		return -1;
	}
	
	FlexLexer* lexer = new yyFlexLexer(&file_in);
	int token = lexer->yylex();
	
	while (token != 0) {

		//STRING LITERAL PRINTING WITHOUT SINGLE QUOTES ('')
		if (token == 401 || token == 405){
			int token_length = lexer->YYLeng();
			int counter = 1;
			cout << token << "	" << tokenName <<  "	 ";
			while (counter != token_length - 1){
				char currentCharacter = lexer->YYText()[counter];
				if (currentCharacter != '\n') //remove newline character + add space
					cout << currentCharacter;
				else
					cout << " ";
				counter++;
			}
			cout << endl;
		}
		else
			if (token == 5){
				//ignore whitespaces
			}
			else cout << token << "	" << tokenName <<  "	 " << lexer->YYText()  << endl;
		token = lexer->yylex();
	}
	return 0;

}


