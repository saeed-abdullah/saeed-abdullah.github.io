all: run


run: 
	bundle exec jekyll serve --livereload --watch

markdowns := $(shell find . -name "*.markdown")
$(markdowns):
	sanitizers/spell-check.sh $@

spell: $(markdowns)
	@:

.PHONY: run, $(markdowns)
