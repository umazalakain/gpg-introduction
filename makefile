all: talk.pdf

talk.pdf: talk.tex talk.bib qrlink.png
	pdflatex talk.tex
	bibtex talk
	pdflatex talk.tex
