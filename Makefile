.PHONY: all

CC = xelatex
OUTPUT_DIR = build
TURKISH_DIR = turkish
ENGLISH_DIR = english
TURKISH_SRCS = $(shell find $(TURKISH_DIR) -name '*.tex')
ENGLISH_SRCS = $(shell find $(ENGLISH_DIR) -name '*.tex')

all: $(foreach x, turkish english, $x)

turkish: turkish.tex $(TURKISH_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

english: english.tex $(ENGLISH_SRCS)
	$(CC) -output-directory=$(OUTPUT_DIR) $<

clean:
	rm -rf $(OUTPUT_DIR)/*
