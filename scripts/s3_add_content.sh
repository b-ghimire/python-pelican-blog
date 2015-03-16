#!/bin/bash

# this bash script creates a markdown file for a blog post

# assign values to blog metadata
export Title="Title: test blog"
export Date="Date: 2010-12-03 10:20"
export Comments="Comments: true"
export Category="Category: Python"
export Tags="Tags: pelican, publishing"
export Slug="Slug: my post"
export Author="Author: BG"
export Summary="Summary: my test"

# assign blog content
export Content="\nthis is the content\n{% notebook /home/bghimire/Dropbox/data_science_projects/pelican_blog/scripts/Untitled0.ipynb %}"

# blog content or post filename
export content_file="./content/post1.md" 

# writing to content or post file
echo $Title > $content_file
echo $Date >> $content_file
echo $Comments >> $content_file
echo $Category >> $content_file
echo $Tags >> $content_file
echo $Slug >> $content_file
echo $Author >> $content_file
echo $Summary >> $content_file
echo -e $Content >> $content_file

 
