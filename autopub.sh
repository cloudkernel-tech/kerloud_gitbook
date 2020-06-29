#!/bin/bash

gitbook build

git checkout master

git checkout -b gh-pages

rm -r en
rm -r zh
rm -r images

cp -R _book/* .

git clean -fx _book

git add .
git commit -m 'publish gitbook'
git push -f origin gh-pages
