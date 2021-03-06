#!/usr/bin/env bash
# build docs
git checkout gh-pages
git pull
rm -rf *
touch .nojekyll
git checkout release-1_0 docs
cd docs
make clean
make html
cd ..
mv docs/build/html/* ./
rm -rf docs
git add -A
git commit -m "publishing updated docs..."
git push origin gh-pages
# switch back
git checkout release-1_0
