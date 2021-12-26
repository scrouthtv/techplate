PDFS := a0.pdf a1.pdf a2.pdf a3.pdf a4landscape.pdf a4portrait.pdf
SVGS := a0.svg a1.svg a2.svg a3.svg a4landscape.svg a4portrait.svg

.PHONY : all phony_explicit

all : $(PDFS) $(SVGS)

phony_explicit : # https://stackoverflow.com/a/38803814/7242251

%.pdf : %.tex phony_explicit
	xelatex $<

%.svg: %.svg phony_explicit
	inkscape --export-type=svg $< # TODO text not rendered correcly (font, spacing, line breaks)
