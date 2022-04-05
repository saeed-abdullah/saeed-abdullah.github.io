all: run

.PHONY: run

run: 
	bundle exec jekyll serve --livereload --watch
