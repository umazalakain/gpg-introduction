all: talk.pdf

talk.pdf: talk.tex talk.bib
	pdflatex talk.tex
	bibtex8 --wolfgang talk
	pdflatex talk.tex
