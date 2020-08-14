
OBJ =  01-test.Rmd 

DEPS = _output.yml _bookdown.yml Makefile style.css


%.md: %.tex
# Convert figs from eps to pdf if needed: run this on command line
#	ls origlatexexport/*.eps | perl -ne 'chomp;$o=$_;s/\.eps/\.png/;print "$_ $o\n"' |xargs -i gs -dSAFER -r300 -sDEVICE=png16m -o {}
	pandoc -R  --from=latex+latex_macros $^ -o  $@
#	rm fixed.tex

%.Rmd: %.md
#	python3 maple_md_to_bookdown.py 
	cp --backup=numbered $^ $@

all: $(OBJ) $(DEPS) gitbook

gitbook: 
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::gitbook')"

pdf: $(OBJ)
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::pdf_book')"

epub: $(OBJ)
	Rscript -e "bookdown::render_book('index.Rmd', 'bookdown::epub_book')"


# clean:
#	rm $(OBJ)
