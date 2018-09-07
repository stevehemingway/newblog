#!/bin/bash -e
# the -e flag forces termination on first error.
git status
git pull
hugo 

# we used to do this, but now the dest file is symlinked
# && rsync --delete -va ~/git/myblog-hugo/public/ /home/user-data/www/stevehemingway.com
