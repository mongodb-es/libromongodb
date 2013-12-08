TEX = pdflatex -synctex=1 -interaction=nonstopmode -output-directory=build

.PHONY: all clean

all: master.pdf

master.pdf : master.tex
	- mkdir i-p build
	$(TEX) master.tex

clean:
	rm build/*
