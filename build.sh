#/bin/sh

# variables for building and cleaning
TEMP="tex"
FILE="thesis"

# clean latexmk files when given "-c" flag, otherwise build pdf
if [ "$1" == "-c" ]; then
  rm -rf $TEMP
else

# build tex files from markdown (overwrites each time)
for ITEM in content/*.md
do
  pandoc -F pandoc-fignos --natbib --top-level-division=chapter $ITEM -o ${ITEM%.md}.tex
done

# generate pdf using latexmk
latexmk -output-directory=$TEMP -pdf -silent -f $FILE

# move pdf to main directory
mv $TEMP/$FILE.pdf dissertation.pdf

fi
