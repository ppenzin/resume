LATEXC=pdflatex
NAME=Penzin

default: $(NAME).pdf

$(NAME).pdf: $(NAME).tex
	$(LATEXC) $(NAME).tex

clean:
	rm -f $(NAME).pdf

