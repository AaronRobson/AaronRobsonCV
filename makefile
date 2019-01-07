.PHONY: all build clean

all: build

build: aaronrobson-cv.pdf

%.pdf: %.tex
	pdflatex -interaction=nonstopmode -halt-on-error $<

clean:
	rm -f *.log *.dvi *.synctex.gz *.pdf
