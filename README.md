# Sean McKenna's Dissertation

Titled: **The Design Activity Framework: Investigating the Data Visualization Design Process**


Manuscript: [https://resources.mckennapsean.com/dissertation/design-activity-framework.pdf](https://resources.mckennapsean.com/dissertation/design-activity-framework.pdf)


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


To optimize generating your manuscript, I recommend using the `make` tool to
combine commands together with "dependencies" --- basically, tasks in `make` can
have files they depend on, and thus will rerun that task's commands if and only
if those files change. This is useful when you have only changed one chapter and
want to typeset and build your entire manuscript easily.


Lastly, I chose to use two templates / formats for my dissertation. My primary
format, the [Dissertate template](https://github.com/suchow/Dissertate),
generates the publicly available PDF version of my dissertation. I also used the
[University of Utah's LaTeX template](http://ftp.math.utah.edu/pub/uuthesis/)
because it is required by the Thesis Office for all manuscripts. The official
published version of my dissertation will be this version, and I removed figures
from Chapter 2 (background / related work) to avoid potential copyright issues
when formally publishing the dissertation.



## Build Requirements

To build the manuscript locally, download the materials, and be sure to create
a folder inside the repository called `tex/`. Alternatively, just run
`make clean`, and then you can build the manuscript (using the Dissertate
template) with `make`.


This workflow requires a number of tools on your system, but is cross-platform compatible:

- make: For Windows only, install [the make utility](http://gnuwin32.sourceforge.net/packages/make.htm).

- posix commands: For Windows only, I'd recommend [installing Git](https://git-scm.com/download/win) with the "optional command line tools" to get access to commands like `ls`, `rm`, etc.

- pandoc: I last used and tested this with [Pandoc v.1.19](https://github.com/jgm/pandoc/releases/tag/1.19.2.1). Based on what I have seen, Pandoc 2.0 should be faster and probably worth the switch.

- pandoc-crossref: You can install this plugin from [the binary releases](https://github.com/lierdakil/pandoc-crossref/releases) just make sure they are added to your path, which I would recommend using the binary unless you already have Haskell installed, then use `cabal`.

- LaTeX: For Linux and Mac OS, I would recommend using [TeXLive](https://www.tug.org/texlive/acquire-netinstall.html). You will likely need to install missing packages with `tlmgr`. For Windows, I would recommend using [MiKTeX](https://miktex.org/download), and you can have it install packages automatically on the fly.

- latexmk: This script will run the LaTeX for you, and it can be installed [using these directions](http://mg.readthedocs.io/latexmk.html).

- fonts: For LaTeX, I would recommend downloading additional fonts with the collections: `collection-fontsrecommended` and `collection-fontsextra`. The templates may also use some other fonts local on my machine, so you may have to find and install, or replace those fonts to get it to build correctly.



## File Organization

I like to keep my manuscripts fairly well organized into folders.

- `dissertation.yaml`: Personal information for my dissertation. You can change this file to show fewer chapters, too. Pandoc uses this information to inject variables into templates, stored in `templates/`.

- `Makefile`: This Makefile is used to simplify generating the manuscript with Pandoc and latexmk. The main command `make` will create the manuscript using the Dissertate template. The command `make uu` will use the University of Utah LaTeX template for the PDF. You can clean up all temp files with `make clean` as well.

- `content/`: Markdown files, numbered, for the written content and chapters of my dissertation, from the abstract to the appendices. In the `papers/` subdirectory is a sample of all my previous papers converted to Markdown, which I found surprisingly easy to do.

- `figures/`: All figures and image files, organized by topic such as related work images or from different papers. These can be PDF, PNG, JPG, etc. Unfortunately, Markdown renderers may not show PDFs, and the directory structure may not link by default.

- `notes/`: For all your notes, from todo's, memos on style guides, defense announcement, etc.

- `refs/`: I combined all my bibliographical references into one file, `references.bib`, but you can have multiple loaded from here, say from each paper. Watch out for duplicate entries. I had to comb carefully through my bib file manually, for each entry, since there were a lot of little errors and issues. The file `journal-abbreviations.bib` shows some of the necessary journal names I used as macros in my bib file, since the IEEE style guide requires the use of abbreviations for all journal and conference names. You can find the ones I cite here, from vis to hci to design journals/conferences, but check the IEEE style guide for further details on abbreviating new entries. Lastly, `crossref.yaml` is part of the Pandoc cross-ref plugin to choose what to call different components when referencing them in your document, such as the use of Chapters instead of Sections or the abbreviated Fig. instead of Figure (as dictated by the IEEE style guide).

- `styles/`: The `uuthesis` files, as well as `Chicago.clo` and `dissertationapproval.sty` are all part of the University of Utah LaTeX template, and only alterations to these files have been made due to their directories. I used `Dissertate.cls` as my primary style template for the manuscript I will make publicly available. `packages.sty` can be used to load custom packages to each of your LaTeX templates, such as the microtype package which improves typesetting. As a note, this is where biblatex uses Biber to specify the style guide for the references, IEEE here. Lastly, `custom.sty` is used to add additional macros or helper LaTeX code for your templates. For example, custom colored commands for my committee were utilized, and I overwrote the figure placement environment to automatically set position parameters.

- `templates/`: These are files used to generate the manuscript through LaTeX. Three of the files are just tables, which required some custom LaTeX commands to customize, position, and render them more easily than through plain Markdown. The other two templates, `uu.tex` and `dissertate.tex` use a templating language defined through Pandoc. You will note that the templates have dollar signs in them, such as `\title{$title$}`, which embeds variables into the templates from the main `dissertation.yaml` file. Thus, the personal info or manuscript-wide variables, such as author, title, which chapters to load, committee names, etc. can all be changed and affect both templates automatically. These template files get filled and stored as temporary tex files in the main directory.

- `tex/`: When Pandoc converts all Markdown content (in `content/`), it renders them to LaTeX in this folder. It is a temp folder, which can be inspected or cleared if you wish.

- `tmp/`: When generating the PDF, `latexmk` stores all files in this folder, keeping your main directory clean. All of these are temp files, but they speed up later builds. The final PDF can be viewed from this folder or copied back to the main folder.


Unfortunately, with LaTeX, to keep files organized, it is often required to
change the class or package names to specify directory names. Just as a note, I
have altered the Thesis Office TeX template files but only for the purpose of
reorganization. The downside to this approach is that future template releases
will need to be manually adopted (and checked) into this format, and they
unfortunately have many files due to the nature of the beast.



## Style Guides and Formatting

The University of Utah Thesis Office is known to be sticklers with the
formatting. So pick your Style Guide to use early, and stick with it. I used
IEEE, after it came recommended by Christine Pickett, and many other SCI
students have used it. Look up and read the style guide. The goal is to have
your document be consistent, so try to keep that in mind. There is a reason to
the madness. You will have to keep a special eye out for abbreviations,
hyphenated words, figure placement, figure references, citation lists, and
spacing/margins. Good luck!



## License

I am including these materials, resources, and content under the MIT License.
Some materials, such as the Dissertate template, and University of Utah LaTeX
template are not mine, and I cannot license their source. For reference, you can
find links to these resources here:

- [Dissertate template](https://github.com/suchow/Dissertate)

- [University of Utah LaTeX template](http://ftp.math.utah.edu/pub/uuthesis/)
