LATEXMK := $(shell command -v latexmk 2>/dev/null)

ifeq ($(LATEXMK),)
COMPILE = lualatex -interaction=nonstopmode -halt-on-error -file-line-error main.tex
CLEAN = rm -f *.aux *.log *.out *.toc *.synctex.gz *.fdb_latexmk *.fls
else
COMPILE = latexmk -lualatex -interaction=nonstopmode -halt-on-error -file-line-error main.tex
CLEAN = latexmk -C main.tex
endif

all:
	$(COMPILE)
	$(COMPILE)

clean:
	$(CLEAN)

.PHONY: all clean
