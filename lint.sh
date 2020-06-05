#!/bin/bash

# script to have a build component for Travis CI 
# this is a work around, there may be a better way to do this

# PMCampbell
# 2020-06-05

# using builtin version but need to install ???
npm install htmllint
#npm install -g htmllint-cli

htmllint init
# cannont get around class and spacing config issue
#htmllint `find ./ -name "*.html"|grep -v node_modules`

htmllint 01-html-css-review/semantics.html
