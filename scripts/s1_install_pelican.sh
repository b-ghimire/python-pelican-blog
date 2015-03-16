#!/bin/bash

# this bash script creates a virtual environment for python and installs python pelican
# virtual environment installs python and other required packages in a single folder for a project without having to worry about other projects

# goto working directory
cd /home/bghimire/Dropbox/data_science_projects/pelican_blog/blog_test

# install virtualenv python package
sudo pip install virtualenv 	

# instal virtualenvwrapper python package
sudo pip install virtualenvwrapper

# set directory for virtual environment
export WORKON_HOME=~/env

# create directory for virtual environment
mkdir -p $WORKON_HOME 

# run virtualenvwrapper.sh source code
source /usr/local/bin/virtualenvwrapper.sh

# create new virtual environment
mkvirtualenv env1

# install pelican python package in virtual environment
sudo pip install pelican

# install python markdown package in virtual environment
sudo pip install markdown

# see the installed python libraries in the virtual environment
pip freeze

# come out of the virtual environment
deactivate

# list the virtual environments
lsvirtualenv

# activate an existing virtual environment
workon env1

# once activated, goto into the virtual environment folder
cdvirtualenv

# list the files in the virutal environment folder
ls

