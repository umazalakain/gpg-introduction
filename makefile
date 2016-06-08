all: summary.pdf talk.pdf


summary.pdf: summary.md
	pandoc summary.md -t latex -o summary.pdf


talk.pdf: talk.tex
	pdflatex talk.tex
	pdflatex talk.tex
