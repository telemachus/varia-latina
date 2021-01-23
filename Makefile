SHELL = /bin/sh
LATEXMK = latexmk
FLAGS = -xelatex

all: tristia iambi carmina propertius

tristia: tristia-titlepage.tex tristia-introduction.tex tristia-text.tex \
	tristia-commentary.tex tristia.bib
	$(LATEXMK) $(FLAGS) tristia-main.tex -jobname=tristia

epode: epode-main.tex epode-titlepage.tex epode-introduction.tex \
	epode-text.tex epode-commentary.tex horace.bib
	$(LATEXMK) $(FLAGS) epode-main.tex -jobname=epode-13

carmina: carmina-main.tex carmina-titlepage.tex carmina-introduction.tex \
	carmina-text.tex carmina-commentary.tex horace.bib
	$(LATEXMK) $(FLAGS) carmina-main.tex -jobname=carmina

propertius: propertius-titlepage.tex propertius-introduction.tex \
	propertius-text.tex  propertius-commentary.tex propertius.bib
	$(LATEXMK) $(FLAGS) propertius-main.tex -jobname=propertius

clean:
	- $(RM) build/*

.PHONY : clean
