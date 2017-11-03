resume
======

My sample resume. Noticed that people are sharing resume sources via github, so
feel free to use to create yours from mine.

As of now, runs only on FreeBSD and Linux.

# Dependencies
* GNU Make (gmake) for building
* texlive (http://www.tug.org/texlive/) for LaTeX processing. `Official'
  version is recommended, since texlive that comes with your OS might not have
  up-to date packages.
* texlive _moderncv_ package
* Optional: PDF viewers: evince on Linux and mupdf on FreeBSD.

# Building
Makefile is set to produce a PDF file via pdflatex. Texlive supports other
formats as well, but PDF is the most common for resumes.

to build run
```
make
```
or on systems where _gmake_ is not the default make
```
gmake
```

