all: run


run: 
	bundle exec jekyll serve --livereload --watch

markdowns := $(shell find . -name "*.markdown")
$(markdowns):
	sanitizers/spell-check.sh $@

spell: $(markdowns)
	@:

# Check for broken links
link:
	wget --spider -r -nd -nv  -l 0 -o /tmp/run-sa.log http://127.0.0.1:4000/

# Update github pages bundle
bundle:
	bundle update github-pages

.PHONY: run, link, $(markdowns), bundle
