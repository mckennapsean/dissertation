CHAPTERSMD := $(wildcard content/*.md)
CHAPTERSTX := $(patsubst %.md,%.tex,$(CHAPTERSMD))
CHAPTERS := $(patsubst content/%,tex/%,$(CHAPTERSTX))

dissertation.pdf: thesis.tex $(CHAPTERS)
	latexmk -output-directory=tmp -pdf -silent -f $<; \
	mv tmp/thesis.pdf dissertation.pdf

tex/%.tex: content/%.md
	pandoc -F pandoc-fignos --natbib --top-level-division=chapter $< -o $@

clean:
	rm -rf tex/
	rm -rf tmp/
	mkdir tex/
