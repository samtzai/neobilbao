ENGINE ?= pdflatex
FLAGS  = -interaction=nonstopmode -halt-on-error -file-line-error

all:
	$(ENGINE) $(FLAGS) main.tex
	$(ENGINE) $(FLAGS) main.tex

clean:
	rm -f main.aux main.log main.out main.toc main.fls main.fdb_latexmk main.synctex.gz

.PHONY: all clean
