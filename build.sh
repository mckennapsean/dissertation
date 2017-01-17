#/bin/sh

# clean all files when given "-c" flag, otherwise build pdf
if [ "$1" == "-c" ]; then
  latexmk -C
  rm chapters/*.tex
  rm chapters/*.aux
  rm front/*.tex
  rm front/*.aux
else

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

# generate pdf using latex
latexmk -pdf -silent -f thesis.tex

fi
