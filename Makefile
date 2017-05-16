# dynamically find chapters in markdown & expected tex
CHAPTERSMD := $(wildcard content/*.md)
CHAPTERSTX := $(patsubst %.md,%.tex,$(CHAPTERSMD))
CHAPTERS := $(patsubst content/%,tex/%,$(CHAPTERSTX))


# build dissertation, using main tex file and all chapters/content
# $< refers to first dependency, $@ refers to output
dissertation.pdf: dissertation.tex $(CHAPTERS)
	latexmk -xelatex -outdir=tmp -pdf -silent -f $<; \
	cp tmp/$@ .


# convert markdown to tex (depends on content/*.md)
tex/%.tex: content/%.md
	pandoc -F pandoc-crossref --natbib --top-level-division=chapter refs/crossref.yaml $< -o $@


# embed yaml data into thesis template to produce tex
dissertation.tex: templates/dissertate.tex dissertation.yaml
	pandoc --template=$< dissertation.yaml -o $@


# build dissertation (for uu-thesis-office)
uu: dissertation-uu.tex $(CHAPTERS)
	latexmk -outdir=tmp -pdf -silent -f $<; \
	cp tmp/dissertation-uu.pdf dissertation-uu.pdf


# embed yaml data (for uu-thesis-office)
dissertation-uu.tex: templates/uu.tex dissertation.yaml
	pandoc --template=$< dissertation.yaml -o $@


cleanuu:
	rm -f dissertation-uu.tex
	rm -f dissertation-uu.pdf


clean: cleanuu
	rm -rf tex/
	mkdir tex/
	rm -f dissertation.tex
	rm -f dissertation.pdf
