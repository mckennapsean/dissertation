#/bin/sh

# build tex files
pandoc -F pandoc-fignos --natbib --top-level-division=chapter chapters/intro.md -o chapters/intro.tex
pandoc -F pandoc-fignos --natbib --top-level-division=chapter chapters/background.md -o chapters/background.tex
pandoc -F pandoc-fignos --natbib --top-level-division=chapter chapters/framework.md -o chapters/framework.tex
pandoc -F pandoc-fignos --natbib --top-level-division=chapter chapters/formulation.md -o chapters/formulation.tex
pandoc -F pandoc-fignos --natbib --top-level-division=chapter chapters/security.md -o chapters/security.tex
pandoc -F pandoc-fignos --natbib --top-level-division=chapter chapters/story.md -o chapters/story.tex
pandoc -F pandoc-fignos --natbib --top-level-division=chapter chapters/timeline.md -o chapters/timeline.tex
# pandoc -F pandoc-fignos --natbib --chapters chapters/conclusion.md -o chapters/conclusion.tex
# pandoc front/abstract.md -o front/abstract.tex
# pandoc front/acknowledge.md -o front/acknowledge.tex

# run latex
# TODO - can we do this all with pandoc?
latexmk -pdf -silent -f thesis.tex

# clear tex files
# rm chapters/*.tex
# rm front/*.tex
