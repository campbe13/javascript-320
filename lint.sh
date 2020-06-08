#!/bin/bash

# script to have a build component for Travis CI 
# this is a work around, there may be a better way to do this

# PMCampbell
# 2020-06-05

# using builtin version but need to install ???
#npm install htmllint -g
npm install  htmllint-cli
npm install babel-eslint eslint

htmllint init
# cannont get around class and spacing config issue
#htmllint `find ./ -name "*.html"|grep -v node_modules`

echo $(basename $0) htmllint step
htmllint 01-html-css-review/semantics.html

echo $(basename $0) eslint step
eslint `find ./ -name "*.js"|grep -v node_modules`
