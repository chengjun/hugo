#!/bin/bash

echo -e "\033[0;32mDeploying updates to GitHub...\033[0m"

# delete public folder
rm -rf public

# Build the project.
hugo # if using a theme, replace by `hugo -t <yourtheme>`

ghp-import -n -p -f public
