#!/bin/sh
hugo && rsync --delete -va ~/git/myblog-hugo/public/ /home/user-data/www/stevehemingway.com
