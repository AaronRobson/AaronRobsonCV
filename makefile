.PHONY: all build clean

all: build

build: aaron-robson-cv.pdf

aaron-robson-cv.pdf: aaron-robson-cv.tex
	pdflatex -interaction=nonstopmode -halt-on-error aaron-robson-cv.tex

clean:
	rm -f *.log *.dvi *.synctex.gz aaron-robson-cv.pdf
