# define URL to Nextcloud where static files are stored:
IMAGES_URL=https://cloud.uni-hamburg.de/s/aD7NTNB9f4NDorT/download
# define a name for the .zip-archive with the cloud contents:
IMAGES_ARCHIVE=version-control-book.zip
# define the name of the local folder:
IMAGES_DIR=static/

# define the default targets of the make command
all: download-images

# download and extract images:
download-images:
	wget $(IMAGES_URL) -O $(IMAGES_ARCHIVE)
	unzip -j -o $(IMAGES_ARCHIVE) -d $(IMAGES_DIR)
	rm -f $(IMAGES_ARCHIVE)

# clean downloaded images folder:
clean:
	rm -rf $(IMAGES_DIR)* _book/