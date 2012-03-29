LESSC=lessc
JEKYLL=jekyll

site: style.css
	$(JEKYLL)

LESS_FILES=less/*.less
style.css: $(LESS_FILES)
	$(LESSC) less/bootstrap.less > $@

test: style.css
	$(JEKYLL) --url file://`pwd`/_site

	