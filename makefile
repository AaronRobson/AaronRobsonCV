.PHONY: all build clean

all: build

build: aaronrobson-cv.pdf

aaronrobson-cv.pdf: aaronrobson-cv.tex
	pdflatex -interaction=nonstopmode -halt-on-error aaronrobson-cv.tex

clean:
	rm -f *.log *.dvi *.synctex.gz aaronrobson-cv.pdf
