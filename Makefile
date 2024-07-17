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


# Several links point to resources in `whilab.org`
# Check that those links are valid
link-local-whi:
	wget --spider -r -H -D whilab.org,127.0.0.1 -nd -nv -l 0 -o /tmp/run-sa.log http://127.0.0.1:4000/

# check links across both live sites
link-live-whi:
	wget --spider -r -H -D saeedabdullah.com,whilab.org -nd -nv -l 0 -o /tmp/run-sa.log saeedabdullah.com

# Update github pages bundle
bundle:
	bundle update github-pages

.PHONY: run link $(markdowns) bundle spell
