#!/bin/bash

# this bash script hosts blog on github

# install git
sudo apt-get install git git-doc
git config --global user.name <ENTER_YOUR_GITHUB_USERNAME>
git config --global user.email <ENTER_YOUR_GITHUB_EMAIL>
git config --global core.editor vim
git config --global merge.tool vimdiff

# create local repo
git init
git add *
git status
git commit -m "blog site"
git status

# create remote repo
git remote add origin https://github.com/b-ghimire/blogtest.git
git remote -v
git push -u origin master

# set up pelican for github pages
sudo pip install ghp-import
make github  # blog page available at http://b-ghimire.github.io/blogtest

