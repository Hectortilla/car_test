#!/usr/bin/env sh

# abort on errors
set -e

# build
yarn build

# navigate into the build output directory
cd .nuxt

git init
git add -A
git commit -m 'deploy'

# if you are deploying to https://<USERNAME>.github.io/<REPO>

git push -f git@github.com:Hectortilla/deploy_todotest_app.git master:gh-pages

cd -
