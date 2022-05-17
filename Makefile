PHONY: all

all: clean main doc

main: main.c
	gcc main.c -o main -std=c11 -W -Wall -pedantic

tabelas: main
	./main

doc: tabelas
	tectonic main.tex

PHONY: clear

clean: 
	rm -f tabela.tex  tabela2.tex main
