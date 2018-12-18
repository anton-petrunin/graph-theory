## How to build

Building is very straightforward, you will need LaTeX and Git.
The following command will create a local copy of the source code for you.

`git clone https://github.com/anton-petrunin/graph-theory.git`

Go to the created folder and `pdflatex`:

`cd graph-theory/`<br/>
`pdflatex graph-theory.tex`<br/>
`makeindex graph-theory`
`biber graph-theory`
`pdflatex graph-theory.tex`<br/>

To get arXiv.tar with all needed files do

`tar -cvf arXiv.tar --files-from list-of-files.txt`
