SOURCE_FILE_NAME = go.md
BOOK_FILE_NAME = golang

PDF_BUILDER = pandoc
PDF_BUILDER_FLAGS = \
	--latex-engine xelatex \
	--template ../common/pdf-template.tex \
	--listings

EPUB_BUILDER = pandoc
EPUB_BUILDER_FLAGS = \
	--epub-cover-image

MOBI_BUILDER = kindlegen

en/golang.pdf:
	cd en && $(PDF_BUILDER) $(PDF_BUILDER_FLAGS) $(SOURCE_FILE_NAME) -o $(BOOK_FILE_NAME).pdf

en/golang.epub: en/cover.jpg en/cover.txt en/go.md
	$(EPUB_BUILDER) $(EPUB_BUILDER_FLAGS) $^ -o $@

en/golang.mobi: en/golang.epub
	$(MOBI_BUILDER) $^

clean:
	rm -f */$(BOOK_FILE_NAME).pdf
	rm -f */$(BOOK_FILE_NAME).epub
	rm -f */$(BOOK_FILE_NAME).mobi
