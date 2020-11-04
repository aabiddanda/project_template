# notebooks := $(wildcard analysis/*.ipynb) $(wildcard analysis/**/*.ipynb)
# html_pages := $(patsubst analysis/%.ipynb, docs/%.html, $(notebooks))
notebooks := $(wildcard notebooks/*.ipynb) $(wildcard notebooks/**/*.ipynb)
html_pages := $(patsubst notebooks/%.ipynb,docs/%.html,$(notebooks))

# notebooks := $(wildcard analysis/*.ipynb)
# html_pages := $(patsubst analysis/%.ipynb, docs/%.html)

build.site: $(html_pages)
clean.site: ; rm $(html_pages)

print-%: ; @echo $* is $($*):

docs/%.html: notebooks/%.ipynb
	jupyter nbconvert\
		--to html $<\
		--output-dir $(dir $@)\
		--template lab\
