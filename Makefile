# dynamically find chapters in markdown & expected tex
CHAPTERSMD := $(wildcard content/*.md)
CHAPTERSTX := $(patsubst %.md,%.tex,$(CHAPTERSMD))
CHAPTERS := $(patsubst content/%,tex/%,$(CHAPTERSTX))


# build the main dissertation, using main tex file and all chapters/content
# $< refers to first dependency, $@ refers to output
dissertation.pdf: dissertation.tex $(CHAPTERS)
	latexmk -outdir=tmp -pdf -silent -f $<; \
	cp tmp/$@ .


# convert markdown to tex (depends on content/*.md)
tex/%.tex: content/%.md
	pandoc -F pandoc-crossref --natbib --top-level-division=chapter refs/crossref.yaml $< -o $@


# embed yaml data into thesis template to produce tex
dissertation.tex: templates/uu.tex dissertation.yaml
	pandoc --template=$< dissertation.yaml -o $@


clean:
	rm -rf tex/
	mkdir tex/
	rm dissertation.tex
	rm dissertation.pdf
