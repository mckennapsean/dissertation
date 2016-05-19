#/bin/sh

# build tex files
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/intro.md -o chapters/intro.tex
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/background.md -o chapters/background.tex
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/framework.md -o chapters/framework.tex
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/formulation.md -o chapters/formulation.tex
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/security.md -o chapters/security.tex
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/story.md -o chapters/story.tex
pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/timeline.md -o chapters/timeline.tex
# pandoc -F pandoc-crossref -M "crossrefYaml=styles/pandoc-crossref.yaml" --natbib --chapters chapters/conclusion.md -o chapters/conclusion.tex
# pandoc front/abstract.md -o front/abstract.tex
# pandoc front/acknowledge.md -o front/acknowledge.tex

# run latex
# TODO - can we do this all with pandoc?
latexmk -pdf -silent -f thesis.tex

# clear tex files
# rm chapters/*.tex
# rm front/*.tex
