#/bin/sh

# environment variable for WSL
# export GHCRTS=-V0
# but pandoc runs slow after v1.17.2 so breaks commands
# can run natively on Windows though

# build tex files from markdown
chapters=($(find chapters -type f -name "*.md"))
for chapter in ${chapters[*]}
do
  pandoc -F pandoc-fignos --natbib --top-level-division=chapter $chapter -o ${chapter%.md}.tex
done

# front=($(find front -type f -name "*.md"))
# for item in ${front[*]}
# do
#   pandoc -F pandoc-fignos --natbib --top-level-division=chapter $item -o ${item%.md}.tex
# done

# run latex
latexmk -pdf -silent -f thesis.tex

# clean tex files
# latexmk -C
# rm chapters/*.tex
# rm chapters/*.aux
# rm front/*.tex
# rm front/*.aux
