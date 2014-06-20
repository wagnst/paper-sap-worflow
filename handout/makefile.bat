pdflatex -interaction=errorstopmode handout
bibtex handout
makeglossaries -q handout
pdflatex -interaction=errorstopmode handout
pdflatex -interaction=errorstopmode handout
