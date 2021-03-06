#!/bin/bash

npm install
npm rebuild node-sass
npm run clean
npm run build:lib
npm run build:docs

git clone https://github.com/framevuerk/public.git



cd ./public
git rm -r *
cp -r ../docs/* ./
git add --all
git commit -m 'updated'
git push -f origin master

cd ..
rm -rf ./public