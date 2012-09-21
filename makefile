
export XELATEX 	= xelatex -shell-escape
export BIBER		= biber -quiet
export RERUN		= 'rerun latex( afterwards){0}'
export UNDEFINED	= "Citation .* undefined"
export LABEL_MULTIPLE		= "(multiply defined)"
export LABEL_NON_DEFINI    = "(Reference .* undefined)"
LANGUAGE	= "fr"

all:
	$(MAKE) -C $(LANGUAGE) $@

clean:
	$(MAKE) -C $(LANGUAGE) clean


