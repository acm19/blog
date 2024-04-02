build:
	docker run --rm -p 4000:4000 --volume="$$PWD:/srv/jekyll" -it jekyll/jekyll jekyll build

run:
	docker run --rm -p 4000:4000 --volume="$$PWD:/srv/jekyll" -it jekyll/jekyll jekyll serve --drafts --livereload
