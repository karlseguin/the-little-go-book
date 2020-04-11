SOURCE_FILE_NAME = go.md
BOOK_FILE_NAME = go

PDF_BUILDER = pandoc
PDF_BUILDER_FLAGS = \
	--pdf-engine xelatex \
	--template ../common/pdf-template.tex \
	--listings

EPUB_BUILDER = pandoc
EPUB_BUILDER_FLAGS = \
	--epub-cover-image

MOBI_BUILDER = kindlegen


en/go.pdf:
	cd en && $(PDF_BUILDER) $(PDF_BUILDER_FLAGS) $(SOURCE_FILE_NAME) -o $(BOOK_FILE_NAME).pdf

en/go.epub: en/title.png en/title.txt en/go.md
	$(EPUB_BUILDER) $(EPUB_BUILDER_FLAGS) $^ -o $@

en/go.mobi: en/go.epub
	$(MOBI_BUILDER) $^

all: en/go.pdf en/go.mobi

clean:
	rm -f */$(BOOK_FILE_NAME).pdf
	rm -f */$(BOOK_FILE_NAME).epub
	rm -f */$(BOOK_FILE_NAME).mobi
