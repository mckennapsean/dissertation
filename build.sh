#/bin/sh

# clean all files when given "-c" flag, otherwise build pdf
if [ "$1" == "-c" ]; then
  latexmk -C
  rm content/*.tex
  rm content/*.aux
else

# build tex files from markdown
for item in content/*.md
do
  pandoc -F pandoc-fignos --natbib --top-level-division=chapter $item -o ${item%.md}.tex
done

# generate pdf using latex
latexmk -pdf -silent -f thesis.tex

fi
