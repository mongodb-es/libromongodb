TEX = pdflatex -synctex=1 -interaction=nonstopmode

.PHONY: all clean

all: master.pdf

master.pdf : master.tex
	- mkdir build
	$(TEX) master.tex
	find \( -name "*.gz" -o -name "*.log" -o -name "*.aux" -o -name "*.toc" \) -delete
	mv master.pdf build/mongodb.pdf
clean:
	rm build/*
