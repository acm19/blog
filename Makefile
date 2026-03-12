.PHONY: update-gems
update-gems:
	docker run --rm -v "$PWD:/app" -w /app ruby bundle lock --update

.PHONY: build
build:
	docker run --rm -p 4000:4000 --volume="$$PWD:/srv/jekyll" -it jekyll/jekyll jekyll build

.PHONY: serve
serve:
	docker run --rm -p 4000:4000 --volume="$$PWD:/srv/jekyll" -it jekyll/jekyll jekyll serve --drafts --livereload
