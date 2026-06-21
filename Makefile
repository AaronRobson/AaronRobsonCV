.DEFAULT_GOAL := all

.PHONY: all
all: check build

.PHONY: clean
clean:
	rm -f *.log *.dvi *.synctex.gz *.pdf

.PHONY: check
check: *.tex
check:
	lacheck *.tex

.PHONY: build
build: *.pdf

%.pdf: %.tex
ifneq (, $(shell which pdflatex))
	@echo Build locally.
	pdflatex -interaction=nonstopmode -halt-on-error $<
else
	@echo Build using Docker image.
	docker run --rm -i \
		--user $$(id -u):$$(id -g) \
		--net=none \
		--read-only \
		-v $(PWD):/data \
		blang/latex:ctanbasic \
		pdflatex $<
endif
