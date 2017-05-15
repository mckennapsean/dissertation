CHAPTERSMD := $(wildcard content/*.md)
CHAPTERSTX := $(patsubst %.md,%.tex,$(CHAPTERSMD))
CHAPTERS := $(patsubst content/%,tex/%,$(CHAPTERSTX))

dissertation.pdf: thesis.tex $(CHAPTERS)
	latexmk -outdir=tmp -pdf -silent -f $<; \
	cp tmp/thesis.pdf dissertation.pdf

tex/%.tex: content/%.md
	pandoc -F pandoc-crossref --natbib --top-level-division=chapter refs/crossref.yaml $< -o $@

clean:
	rm -rf tex/
	mkdir tex/
	rm dissertation.pdf
