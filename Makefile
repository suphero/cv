.PHONY: build_all clean

TECTONIC = tectonic -X compile --outdir build -Z search-path=.

build_all: build/english.pdf build/turkish.pdf

build/english.pdf: $(wildcard english/*.tex)
	@mkdir -p build
	$(TECTONIC) english/english.tex

build/turkish.pdf: $(wildcard turkish/*.tex)
	@mkdir -p build
	$(TECTONIC) turkish/turkish.tex

clean:
	rm -rf build
