# System settings
UNAME=$(shell uname)
ARCH=$(shell uname -m)
ifeq ($(UNAME), FreeBSD)
        OS=freebsd
	VIEWER=mupdf
else
ifeq ($(UNAME), Linux)
        OS=linux
	VIEWER=evince
else
        OS=unsupported
	VIEWER=unsupported
	ARCH=unsupported
endif
endif

TEXLIVE_HOME=/usr/local/texlive/2013/bin/$(ARCH)-$(OS)

# Compile and preveiw settings
LATEXC=$(TEXLIVE_HOME)/pdflatex
FILE=Penzin.pdf

default: $(FILE)

%.pdf: %.tex
	$(LATEXC) $^

clean:
	rm -f $(FILE)

preview: $(FILE)
	$(VIEWER) $^ &
