SHELL = /bin/sh
LATEXMK = latexmk
FLAGS = -xelatex

all: tristia iambi

tristia: tristia-titlepage.tex tristia-introduction.tex tristia-text.tex \
	tristia-commentary.tex tristia.bib
	$(LATEXMK) $(FLAGS) tristia-main.tex -jobname=tristia

iambi: iambi-main.tex iambi-titlepage.tex iambi-introduction.tex \
	iambi-text.tex iambi-commentary.tex horace.bib
	$(LATEXMK) $(FLAGS) iambi-main.tex -jobname=iambi

clean:
	- $(RM) *.{aux,log,pdf,bbl,blg,fls,1,fdb_latexmk,end,eledsec1,out,toc}

.PHONY : clean
