.PHONY: all build clean

all: build

build: *.pdf

%.pdf: %.tex
	pdflatex -interaction=nonstopmode -halt-on-error $<

clean:
	rm -f *.log *.dvi *.synctex.gz *.pdf
