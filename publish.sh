#!/bin/sh
git pull
hugo && rsync --delete -va ~/git/myblog-hugo/public/ /home/user-data/www/stevehemingway.com
