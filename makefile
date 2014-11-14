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

# Compile and preveiw settings
LATEXC=pdflatex
FILE=Penzin.pdf

default: $(FILE)

%.pdf: %.tex
	$(LATEXC) $^

clean:
	rm -f $(FILE)

preview: $(FILE)
	$(VIEWER) $^ &
