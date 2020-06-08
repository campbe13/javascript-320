#!/bin/bash

# script to have a build component for Travis CI 
# this is a work around, there may be a better way to do this

# PMCampbell
# 2020-06-05

# using builtin version but need to install ???
#npm install htmllint -g
npm install -g htmllint-cli
npm install -g eslint

htmllint init
# cannont get around class and spacing config issue
#htmllint `find ./ -name "*.html"|grep -v node_modules`

htmllint 01-html-css-review/semantics.html

eslint `find ./ -name "*.js"|grep -v node_modules`
