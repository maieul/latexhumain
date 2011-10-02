
XELATEX 	= xelatex -shell-escape
BIBER		= biber -quiet
RERUN		= 'rerun latex( afterwards){0}'
UNDEFINED	= "Citation .* undefined"
LABEL_MULTIPLE		= "(multiply defined)"
LABEL_NON_DEFINI    = "(Reference .* undefined)"

.PHONY: all  clean

all:principal.pdf

%.pdf: %.tex ./annexes/*  ./biblio/* ./biblio_fichiers/* ./exemples/*/*/* ./preambule/* ./navigation/* preliminaires/* premierpas/* schemas/* shs/*
	@echo "Compilation XELATEX"
	@$(XELATEX) $<
	@echo "Compilation Biber"
	@$(BIBER) $*
	splitindex -m "makeindex -s latex-humain.ist" $*.idx 
	python index.py 
	@echo "Compilation XELATEX 2"


	@$(XELATEX) $<
	for ((i = 3 ; i < 6 ; i++)) ; \
	do \
	if egrep -i -q  $(RERUN) $*.log ; \
		then \
			splitindex -m "makeindex -s latex-humain.ist" $*.idx ; \
			python index.py ; \
			echo "Compilation XELATEX" $$i; \
			$(XELATEX) $< ; \
		fi \
	done \


	@echo "Citations indéfinies:"
	@egrep -i $(UNDEFINED) $*.log || echo "Aucune"
	@echo "Erreurs de label"
	@egrep -i $(LABEL_MULTIPLE) $*.log || echo "Pas de label multiple"
	@egrep -i $(LABEL_NON_DEFINI) $*.log || echo "Pas de label indéfini"
clean:
	@rm -f *.log *.out *.toc  *.pdf *idx *ind *run.xml *blg *bbl *bcf *ilg
	@find -name '*\.aux' -exec rm -f {} \;
