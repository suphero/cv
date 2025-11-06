.PHONY: build_all

CC = xelatex
TURKISH_SRCS = $(shell find turkish -name '*.tex')
ENGLISH_SRCS = $(shell find english -name '*.tex')
RESUME_SRCS = $(shell find resume -name '*.tex')

build_all: $(foreach x, turkish english, $x.pdf)

turkish.pdf: turkish/turkish.tex $(TURKISH_SRCS)
	xelatex -output-directory=build $<

english.pdf: english/english.tex $(ENGLISH_SRCS)
	xelatex -output-directory=build $<

resume.pdf: resume/resume.tex $(RESUME_SRCS)
	xelatex -output-directory=build $<

clean:
	rm -rf build/*.pdf
