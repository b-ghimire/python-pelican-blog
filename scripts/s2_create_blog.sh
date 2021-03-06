#!/bin/bash

# this bash script creates the folder and files for generating blog using pelican

# activate an existing virtual environment
workon env1

# set up pelican to generate folders and scripts 
# folders and scripts used to generate webpages
pelican-quickstart

# copy themes for the blog
git clone https://github.com/duilio/pelican-octopress-theme.git

# copy theme folder name to pelicanconf.py file
export TEXT="THEME = 'pelican-octopress-theme'"  
echo $TEXT >> pelicanconf.py  # appends text to file

# copy plugins for the blog
git clone https://github.com/getpelican/pelican-plugins.git

# copy the plugins folder name to pelicanconf.py file
export TEXT="PLUGIN_PATH = 'pelican-plugins'"
echo $TEXT >> pelicanconf.py  # appends text to file

# copy the plugin names to pelicanconf.py
export TEXT="PLUGINS = ['summary', 
                          'liquid_tags.img', 
                          'liquid_tags.video', 
                          'liquid_tags.include_code', 
                          'liquid_tags.notebook',
                          'liquid_tags.literal']"
echo $TEXT >> pelicanconf.py  # appends text to file

# text to adjust formatting of notebook used to generate html
export TEXT="\nimport os\n\n# The theme file should be updated so that the base header contains the line:\n#\n# {% if EXTRA_HEADER %}\n# {{ EXTRA_HEADER }}\n# {% endif %}\n#\n\n# This header file is automatically generated by the notebook plugin\nif not os.path.exists('_nb_header.html'):\n\timport warnings\n\twarnings.warn('_nb_header.html not found.'\n\t\t'Rerun make html to finalize build.')\nelse:\n\tEXTRA_HEADER = open('_nb_header.html').read().decode('utf-8')\n"

# -e is the flag for backslash escape sequences
echo -e $TEXT >> pelicanconf.py  # appends text to file

