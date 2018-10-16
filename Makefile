# Makefile for generating postscript file $(TARGET).ps from $(TARGET).tex
TARGET = latex_guides

     
all: $(TARGET).pdf


#compile two times to show table of contents
$(TARGET).pdf: $(TARGET).tex
	pdflatex $(TARGET).tex
	pdflatex $(TARGET).tex

clean:
	./cleantex

ispell:
	ispell $(TARGET).tex




	# Makefile for generating postscript file $(TARGET).ps from $(TARGET).tex
# TARGET = latex_guides

# BIB = SFEM.bib \
#       Fangbo_bibfile.bib \
#       SoilProperties.bib
     
# all: $(TARGET).pdf

# $(TARGET).pdf: $(TARGET).tex  $(TARGET).bbl 
# 	pdflatex $(TARGET).tex
# 	pdflatex $(TARGET).tex
# 	pdflatex $(TARGET).tex

# $(TARGET).bbl: $(TARGET).tex $(BIB)
# 	pdflatex $(TARGET).tex
# 	bibtex $(TARGET)

# clean:
# 	rm $(TARGET).pdf

# ispell:
# 	ispell $(TARGET).tex

