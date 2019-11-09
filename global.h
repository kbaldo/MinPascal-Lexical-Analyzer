// global.h 
// Skeleton source code by Glenn Fabia 
// Handout for ICST252 Compiler Design and Implementation
// 2nd Semester S/Y 2016 -2017
//
// This file contains the token definitions

#include <iostream>
using namespace std;

extern string tokenName;

		//name	//number
#define WHITESPACE	5		//DONE
#define SEMICOLON	10		//DONE
#define ASSIGNOP	11		//DONE
#define COLON 		12		//DONE
#define OPENPAR		13		//DONE
#define CLOSEPAR	14		//DONE
#define COMMA		15		//DONE
#define START 		300		//DONE
#define END			301		//DONE
#define VAR 		302		//DONE
#define WRITELN		303		//DONE
#define WRITE		304		//DONE
#define READLN		305		//DONE
#define INTEGER		306		//DONE
#define STRING		307		//DONE
#define FLOAT		308		//DONE
#define ID			400		//DONE
#define STRLIT		401		//DONE
#define INTLIT 		402		//DONE
#define FLTLIT		403		//DONE
#define COMMENT		405		//DONE
#define JULS		369
//new definitions
#define ADD			16		//DONE
#define SUBTRACT	17		//DONE
#define MULTIPLY	18		//DONE
#define DIVIDE		19		//DONE
#define IFCOND		500		//DONE
#define THENCOND	501		//DONE
#define ELSECOND	502		//DONE
#define REPORT		503		//DONE
#define	UNTIL		504		//DONE
#define	FORCOND		505		//DONE
#define TOCOND		506		//DONE
#define	DOCOND		507		//DONE
#define WHILECOND	508		//DONE
//9-25-19 //9-27-19
#define ABSFUNC		900		//DONE
#define EXPRFUNC	901		//DONE
#define SQRTFUNC	902		//DONE
#define ARRAY		995		//DONE

#define COMPOP		509