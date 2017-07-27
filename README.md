# Sean McKenna's Dissertation

Titled: **The Design Activity Framework: Investigating the Data Visualization Design Process**


Manuscript: [https://mckennapsean.com/website-resources/dissertation/design-activity-framework.pdf](https://mckennapsean.com/website-resources/dissertation/design-activity-framework.pdf)


Defended: _June 1st, 2017_


Please find all the content for this dissertation in the `content/` and `figures/` folders.



## Build Process

This manuscript was built on top of [Pandoc](https://pandoc.org/), to write up
academic research using Markdown. By default,
[Markdown syntax](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet)
does not utilize custom image sizes, citations, or figure/table/section
references based on labels. Fortunately, Pandoc and the crossref plugin add this
functionality.


Using Pandoc, you can export to a wide variety of formats, but commonly in
academia we use LaTeX to typeset our manuscripts and output these into an
accessible format, such as PDF files. When writing Markdown content for Pandoc,
you can also inject TeX formating, such as the math environment for equations or
more robust figure or table environments. The downside of writing custom TeX is
that you cannot output these Markdown files into just any format: only TeX or
PDF. I did use a few TeX elements in my dissertation to handle some styling edge
cases as well as for complex tables and customizing figure placement.


Pandoc can run LaTeX for you, but I recommend using `latexmk`, a Perl script
that only reruns the necessary parts of TeX for you (e.g., BibTeX, LaTeX, XeTeX,
etc.). In my testing, this was the fastest way to build a large manuscript
quickly. You can also disable which chapters to build in `dissertation.yaml`. To
use custom system-wide fonts, I used XeLaTeX for my dissertation. For
references, I used Biber to generate citations and the bibliography, since it
more easily conformed to the IEEE style guide and fit simply in my workflow.
