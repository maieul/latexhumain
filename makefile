
XELATEX 	= xelatex -shell-escape
BIBER		= biber -quiet
RERUN		= 'rerun LaTeX'
UNDEFINED	= "Citation .* undefined"


.PHONY: all  clean

all:principal.pdf

%.pdf : %.tex ./annexes ./biblio ./biblio_fichiers ./exemples ./head ./navigation preliminaires premierpas schemas shs
	@echo "Compilation XELATEX"
	$(XELATEX) $<
	@echo "Compilation Biber"
	$(BIBER) $*
	number = 1 ; while egrep -i -q $(RERUN) $*.log ; do \
	        echo $$number ; \
	        ((number = number + 1)) ; \
			echo "Passe XeLaTeX" $$number ; \
			$(XELATEX) $< ; \
	    done
	open $@

clean:
	@rm -f *.aux *.log *.out *.toc  *.pdf *idx *ind *run.xml *blg *bbl *bcf