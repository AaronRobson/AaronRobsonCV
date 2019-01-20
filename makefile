.PHONY: all build clean

.DEFAULT_GOAL := all
all: build

build: *.pdf

%.pdf: %.tex
	pdflatex -interaction=nonstopmode -halt-on-error $<

clean:
	rm -f *.log *.dvi *.synctex.gz *.pdf
