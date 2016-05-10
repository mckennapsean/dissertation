#/bin/sh

# build tex files
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/bubble-net.md -o chapters/bubble-net.tex
pandoc front/abstract.md -o front/abstract.tex
pandoc front/acknowledge.md -o front/acknowledge.tex

# run latex
# TODO - can we do this all with pandoc?
latexmk -pdf -silent -f thesis.tex

# clear tex files
# rm chapters/*.tex
# rm front/*.tex
