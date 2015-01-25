SHELL = /bin/sh
LATEXMK = latexmk
FLAGS = -xelatex

all: tristia epodes

tristia: tristia-titlepage.tex tristia-introduction.tex tristia-text.tex \
	tristia-commentary.tex tristia.bib
	$(LATEXMK) $(FLAGS) tristia-main.tex -jobname=tristia

epodes: epodes-titlepage.tex epodes-introduction.tex epodes-text.tex \
	epodes-commentary.tex epodes.bib
	$(LATEXMK) $(FLAGS) epodes-main.tex -jobname=epodes

clean:
	- $(RM) *.{aux,log,pdf,bbl,blg,fls,1,fdb_latexmk,end,eledsec1,out,toc}

.PHONY : clean
