## Customize Makefile settings for eins2023
## 
## If you need to customize your Makefile, make
## changes here rather than in the main Makefile



## Module for ontology: hp

$(IMPORTDIR)/hp_import.owl: $(MIRRORDIR)/hp.owl
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/hp_terms.txt --force true --copy-ontology-annotations true --individuals exclude --method subset --intermediates none \
		filter -T $(IMPORTDIR)/hp_terms.txt --select "self annotations" --trim false \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi

## Module for ontology: noyo

$(IMPORTDIR)/noyo_import.owl: $(MIRRORDIR)/noyo.owl
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/noyo_terms.txt --force true --copy-ontology-annotations true --individuals exclude --method SLME --intermediates none \
		filter -T $(IMPORTDIR)/noyo_terms.txt --select "self annotations" --trim false \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi

## Module for ontology: omrse

$(IMPORTDIR)/omrse_import.owl: $(MIRRORDIR)/omrse.owl
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/omrse_terms.txt --force true --copy-ontology-annotations true --individuals exclude --method SLME --intermediates none \
		filter -T $(IMPORTDIR)/omrse_terms.txt --select "self annotations" --trim false \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi

## Module for ontology: ogms

$(IMPORTDIR)/ogms_import.owl: $(MIRRORDIR)/ogms.owl
	if [ $(IMP) = true ]; then $(ROBOT) query -i $< --update ../sparql/preprocess-module.ru \
		extract -T $(IMPORTDIR)/ogms_terms.txt --force true --copy-ontology-annotations true --individuals exclude --method SLME --intermediates none \
		filter -T $(IMPORTDIR)/ogms_terms.txt --select "self annotations" --trim false \
		query --update ../sparql/inject-subset-declaration.ru --update ../sparql/inject-synonymtype-declaration.ru --update ../sparql/postprocess-module.ru \
		$(ANNOTATE_CONVERT_FILE); fi