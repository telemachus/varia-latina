SHELL = /bin/sh
LATEXMK = latexmk
FLAGS = -xelatex

all: book

book: titlepage.tex introduction.tex text.tex commentary.tex tristia.bib
	$(LATEXMK) $(FLAGS) tristia.tex

clean:
	- $(RM) *.{aux,log,pdf,bbl,blg,fls,1,fdb_latexmk,end,eledsec1,out,toc}

.PHONY : clean
