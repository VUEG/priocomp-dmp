# Makefile
#
# Converts Markdown to other formats (HTML, PDF, DOCX, RTF, ODT, EPUB) using Pandoc
# <http://johnmacfarlane.net/pandoc/>
#
# Run "make" (or "make all") to convert to all other formats
#
# Run "make clean" to delete converted files

# Convert all files in this directory that have a .md suffix
SOURCE_DOCS := $(wildcard *dmp.md)

BUILD_DIR=build

EXPORTED_DOCS=\
 $(SOURCE_DOCS:.md=.html) \
 $(SOURCE_DOCS:.md=.pdf) \
 $(SOURCE_DOCS:.md=.docx) \
 $(SOURCE_DOCS:.md=.rtf) \
 $(SOURCE_DOCS:.md=.odt) \
 $(SOURCE_DOCS:.md=.epub)

RM=/bin/rm

PANDOC=/usr/bin/pandoc
PANZER=/usr/bin/panzer

PANDOC_OPTIONS=--smart --standalone

PANDOC_HTML_OPTIONS=--to html5
PANDOC_PDF_OPTIONS=
PANDOC_DOCX_OPTIONS=
PANDOC_RTF_OPTIONS=
PANDOC_ODT_OPTIONS=
PANDOC_EPUB_OPTIONS=--to epub3


# Pattern-matching Rules

%.html : %.md
	$(PANZER) $(PANDOC_OPTIONS) $(PANDOC_HTML_OPTIONS) -o $(BUILD_DIR)/$@ $<

%.pdf : %.md
	$(PANZER) $(PANDOC_OPTIONS) $(PANDOC_PDF_OPTIONS) -o $(BUILD_DIR)/$@ $<

%.docx : %.md
	$(PANZER) $(PANDOC_OPTIONS) $(PANDOC_DOCX_OPTIONS) -o $(BUILD_DIR)/$@ $<

%.rtf : %.md
	$(PANZER) $(PANDOC_OPTIONS) $(PANDOC_RTF_OPTIONS) -o $(BUILD_DIR)/$@ $<

%.odt : %.md
	$(PANZER) $(PANDOC_OPTIONS) $(PANDOC_ODT_OPTIONS) -o $(BUILD_DIR)/$@ $<

%.epub : %.md
	$(PANZER) $(PANDOC_OPTIONS) $(PANDOC_EPUB_OPTIONS) -o $(BUILD_DIR)/$@ $<


# Targets and dependencies

.PHONY: all clean

all : $(EXPORTED_DOCS)

clean:
	- $(RM) $(EXPORTED_DOCS)
