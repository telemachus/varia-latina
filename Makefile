SHELL = /bin/sh
LATEXMK = latexmk
FLAGS = -xelatex

all: tristia iambi carmina

tristia: tristia-titlepage.tex tristia-introduction.tex tristia-text.tex \
	tristia-commentary.tex tristia.bib
	$(LATEXMK) $(FLAGS) tristia-main.tex -jobname=tristia

iambi: iambi-main.tex iambi-titlepage.tex iambi-introduction.tex \
	iambi-text.tex iambi-commentary.tex horace.bib
	$(LATEXMK) $(FLAGS) iambi-main.tex -jobname=iambi

carmina: carmina-main.tex carmina-titlepage.tex carmina-introduction.tex \
	carmina-text.tex carmina-commentary.tex horace.bib
	$(LATEXMK) $(FLAGS) carmina-main.tex -jobname=carmina

clean:
	- $(RM) *.{aux,log,pdf,bbl,blg,fls,1,fdb_latexmk,end,eledsec1,out,toc}

.PHONY : clean
