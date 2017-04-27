MAIN_FILE_NAME=main
MAIN_FILE=$(MAIN_FILE_NAME).tex
MAIN_FILE_OUT=$(MAIN_FILE_NAME).pdf
TEXFILES=$(`ls *.tex`)

#all : $(MAIN_FILE)
	#pdflatex $(MAIN_FILE)
	#pdflatex $(MAIN_FILE)  > compile.log
	#evince $(MAIN_FILE_OUT) &

all : $(TEXFILES) $(BIBLIOGRAPHY)
	pdflatex $(MAIN_FILE)
	bibtex $(MAIN_FILE_NAME)
	pdflatex $(MAIN_FILE)
	pdflatex $(MAIN_FILE)  > compile.log
	evince $(MAIN_FILE_OUT) &

clean : FORCE
	rm $(MAIN_FILE_OUT)
	rm *.out
	rm *.log
	rm *.aux
	rm *.toc
	rm *~


FORCE:


