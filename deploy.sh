#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"
echo -e "
Remember: you need to log into box.acksam.com and go to /home/user-data/www/stevehemingway.com
then do 'git pull' to pull the built website from github pages!  
"

# Build the project.
hugo
#/snap/bin/hugo  you need to use this if it is not in your path

# Go To Public folder
cd public
# Add changes to git.
git add -A :/

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
	  then msg="$1"
	  fi
	  git commit -m "$msg"

	  # Push source and build repos.
	  git push origin master
	  echo "if the above command failed, you might want to cd to public and do a 'git rm -rf .'"

	  # Come Back
	  cd ..
