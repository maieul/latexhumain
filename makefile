
XELATEX 	= xelatex -shell-escape
BIBER		= biber -quiet
RERUN		= 'rerun LaTeX afterwards'
UNDEFINED	= "Citation .* undefined"


.PHONY: all  clean

all:principal.pdf

%.pdf : %.tex ./annexes ./biblio ./biblio_fichiers ./exemples ./head ./navigation preliminaires premierpas schemas shs
	@echo "Compilation XELATEX"
	$(XELATEX) $<
	@echo "Compilation Biber"
	$(BIBER) $*
	@if egrep -q $(RERUN) $*.log ; then echo "Compilation XELATEX" && $(XELATEX) $< ; fi
	
	@echo "Citations indéfinies:"
	@egrep -i $(UNDEFINED) $*.log || echo "Aucune"
	open $@

clean:
	@rm *.aux *.log *.out *.toc  *.pdf *idx *ind *run.xml *blg *bbl *bcf