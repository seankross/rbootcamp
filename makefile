# Adapted from: https://github.com/bcaffo/courses/blob/master/01_DataScientistToolbox/makefile

RMD_FILES  = $(wildcard *.Rmd)
HTML_FILES = $(patsubst %.Rmd, %.html, $(RMD_FILES))

all: $(HTML_FILES)

files:
	@echo $(RMD_FILES)
	@echo $(HTML_FILES)

%.html: %.Rmd
	Rscript -e "rmarkdown::render('$(<F)')"

clean:
	rm -f *.html
  