STATIC_URL=https://cloud.uni-hamburg.de/s/aD7NTNB9f4NDorT/download
STATIC_ARCHIVE=version-control-book.zip
STATIC_DIR=static/

all: render

.PHONY: preview
preview:
	quarto preview

.PHONY: render
render: clean static
	quarto render
	
.PHONY: deploy
deploy: clean static
	quarto publish gh-pages

.PHONY: preview
preview:
	quarto preview --to html

.PHONY: html
html:
	quarto render --to html

.PHONY: pdf
pdf:
	quarto render --to pdf

# download and extract images:
.PHONY: static
static:
	wget $(STATIC_URL) -O $(STATIC_ARCHIVE)
	unzip -j -o $(STATIC_ARCHIVE) -d $(STATIC_DIR)
	rm -f $(STATIC_ARCHIVE)

.PHONY: clean
clean:
	rm -rf $(STATIC_DIR)* _book/
	
.PHONY: exercises
exercises:
	sh code/code-exercises.sh
