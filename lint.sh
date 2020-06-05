#!/bin/bash

# script to have a build component for Travis CI 
# this is a work around, there may be a better way to do this

# PMCampbell
# 2020-06-05
#npm install htmllint
npm install -g htmllint-cli
htmllint init
htmllint `find ./ -name "*.html"`
