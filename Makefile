all: run


run: 
	bundle exec jekyll serve --livereload --watch

markdowns := $(shell find . -name "*.markdown")
$(markdowns):
	sanitizers/spell-check.sh $@

spell: $(markdowns)
	@:

link:
	wget --spider -r -nd -nv  -l 0 -o /tmp/run-sa.log http://127.0.0.1:4000/

.PHONY: run, link, $(markdowns)
