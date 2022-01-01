#!/bin/sh
nbdev_clean_nbs --fname notebooks/
nbdev_build_docs --mk_readme False

find . -name '*.html' -type f -exec sed '1 a\
layout: default' --in-place {} \;

bundle exec jekyll build

# Similar setup without nbdev
# jupyter nbconvert --to=html notebooks/**/*.ipynb notebooks/*.ipynb
# cd notebooks
# rsync -rv --include '*/' --include '*.html' --exclude '*' --prune-empty-dirs --remove-source-files . ..
# cd ..
