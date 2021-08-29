#!/usr/bin/env sh

set -e

npm run build

cd dist

rm -rf *.map

git init
git add -A
git commit -m 'New Deployment'
git push -f git@github.com:necdetuygur/sayitahmin.git master:gh-pages

cd -