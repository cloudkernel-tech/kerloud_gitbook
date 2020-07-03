#!/bin/bash

gitbook build

git checkout master
git branch -D gh-pages

git checkout -b gh-pages

rm -r en
rm -r zh

cp -R _book/* .

git clean -fx _book

git add .
git commit -m 'publish gitbook'

# push to main page remote
git push -f mainpage_origin gh-pages:master
