.PHONY: all clean distclean watch

all:
	latexmk -pdf -output-directory=build main.tex
	latexmk -c -output-directory=build main.tex

clean:
	latexmk -c -output-directory=build main.tex

distclean:
	latexmk -C -output-directory=build main.tex

watch:
	latexmk -pdf -pvc -output-directory=build main.tex
