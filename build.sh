#/bin/sh

# build tex files
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/bubble-net.md -o chapters/bubble-net.tex
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/methods.md -o chapters/methods.tex
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/daf.md -o chapters/daf.tex
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/scorrplot.md -o chapters/scorrplot.tex
pandoc front/abstract.md -o front/abstract.tex
pandoc front/acknowledge.md -o front/acknowledge.tex

# run latex
# TODO - can we do this all with pandoc?
latexmk -pdf -silent -f thesis.tex

# clear tex files
# rm chapters/*.tex
# rm front/*.tex
