.PHONY: all build clean

.DEFAULT_GOAL := all
all: build

build: *.pdf

%.pdf: %.tex
ifeq (, $(wildcard pdflatex))using locally installed "pdflatex".
	echo Build locally.
	pdflatex -interaction=nonstopmode -halt-on-error $<
else
	echo Build using Docker image.
	docker run --rm -i --user="$(id -u):$(id -g)" --net=none \
		-v $(PWD):/data \
		blang/latex:ubuntu \
		pdflatex $<
endif

clean:
	rm -f *.log *.dvi *.synctex.gz *.pdf
