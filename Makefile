# Makefile 
# (c) Glenn Fabia 
# Handout for ICST252 Compiler Design and Implementation
# 2nd Semester S/Y 2016 -2017

flexscan : main.cpp minpascal.l
	flex -+ -o scan.cpp minpascal.l
	g++ -o scanner main.cpp scan.cpp -lfl

clean:
	rm -rf scan.cpp scanner
