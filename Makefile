.PHONY: build_all

CC = xelatex
OUTPUT_DIR = build
TURKISH_DIR = turkish
ENGLISH_DIR = english
TURKISH_SRCS = $(shell find $(TURKISH_DIR) -name '*.tex')
ENGLISH_SRCS = $(shell find $(ENGLISH_DIR) -name '*.tex')

build_all: $(foreach x, turkish english, $x.pdf)

turkish.pdf: turkish.tex $(TURKISH_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

english.pdf: english.tex $(ENGLISH_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

clean:
	rm -rf $(OUTPUT_DIR)/*.pdf
