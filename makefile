.PHONY: all build clean

all: build

build: AaronRobsonCV.pdf

AaronRobsonCV.pdf: AaronRobsonCV.tex
	pdflatex -interaction=nonstopmode -halt-on-error AaronRobsonCV.tex

clean:
	rm -f {*.log,*.dvi,AaronRobsonCV.pdf}
