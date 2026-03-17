IMAGES_URL=https://cloud.uni-hamburg.de/s/aD7NTNB9f4NDorT/download
IMAGES_ARCHIVE=version-control-book.zip
IMAGES_DIR=images/

all: render

.PHONY: preview
preview:
	quarto preview

.PHONY: render
render: clean images
	quarto render
	
.PHONY: deploy
deploy: clean images
	quarto publish gh-pages

# download and extract images:
.PHONY: images
images:
	curl -L $(IMAGES_URL) -o $(IMAGES_ARCHIVE)
	unzip -j -o $(IMAGES_ARCHIVE) -d $(IMAGES_DIR)
	rm -f $(IMAGES_ARCHIVE)

.PHONY: clean
clean:
	rm -rf $(IMAGES_DIR)* _book/
	
.PHONY: exercises
exercises:
	sh code/code-exercises.sh
