
XELATEX 	= xelatex -shell-escape
BIBER		= biber -quiet
RERUN		= 'rerun latex( afterwards){0}'
UNDEFINED	= "Citation .* undefined"
LABEL_MULTIPLE		= "(multiply defined)"
LABEL_NON_DEFINI    = "(Reference .* undefined)"

.PHONY: all  clean

all:principal.pdf

%.pdf : %.tex ./annexes ./biblio ./biblio_fichiers ./exemples ./head ./navigation preliminaires premierpas schemas shs
	@echo "Compilation XELATEX"
	@$(XELATEX) $<
	@echo "Compilation Biber"
	@$(BIBER) $*
	
	@echo "Compilation XELATEX 2"
	
	@$(XELATEX) $<
	
	number = 2 ; while egrep -i -q -x $(RERUN) $*.log ; do \
	        echo $$number ; \
	        ((number = number + 1)) ; \
			echo "Passe XeLaTeX" $$number ; \
			$(XELATEX) $< ; \
	    done
	@echo "Citations indéfinies:"
	@egrep -i $(UNDEFINED) $*.log || echo "Aucune"
	@echo "Erreurs de label"
	@egrep -i $(LABEL_MULTIPLE) $*.log || echo "Pas de label multiple"
	@egrep -i $(LABEL_NON_DEFINI) $*.log || echo "Pas de label indéfini"
clean:
	@rm -f *.aux *.log *.out *.toc  *.pdf *idx *ind *run.xml *blg *bbl *bcf