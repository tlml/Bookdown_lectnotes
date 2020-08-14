# Bookdown lecture notes example/template
This is a minimal example of how html lecture notes could be written in accessible way with **bookdown**. In principle also pdf and ebook can be produced, I just haven't touched that side much so far...

You'll need to install R, and then in R install bookdown by giving a command

install.packages('bookdown')

You also need pandoc to convert the 01-text.tex to 01-text.Rmd.

Then, you'll need to run 

make

(no instructions for rstudio etc yet, sorry)... You can find more information on that, and on Bookdown in general, from the following (the text is copied from https://github.com/rstudio/bookdown-demo

## From bookdown-demo:

This is a minimal example of a book based on R Markdown and **bookdown** (https://github.com/rstudio/bookdown). Please see the page "[Get Started](https://bookdown.org/yihui/bookdown/get-started.html)" at https://bookdown.org/yihui/bookdown/ for how to compile this example into HTML. You may generate a copy of the book in `bookdown::pdf_book` format by calling `bookdown::render_book('index.Rmd', 'bookdown::pdf_book')`. More detailed instructions are available here https://bookdown.org/yihui/bookdown/build-the-book.html.

You can find the preview of this example at https://bookdown.org/yihui/bookdown-demo/.


## Comments on the files

The make command converts the 01-text.tex file to 01-text.Rmd, from which the web pages are generated into the \_book/ directory. Subsequent make commands only recreate the 01-text.Rmd if the tex file has been changed (with numbered backups created of the Rmd file).

To add more tex files, you'll need to add them to the OBJS line in the Makefile (delimited with a space).

The 02-text.Rmd is an edited version of the 01-text.Rmd, with some other stuff...

The other files (yml, css, tex) control how the output looks like.

