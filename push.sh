#!/bin/bash
echo -e "build push"

# Build the project.
hugo -t hugo-PaperMod

# Go To Public folder
cd public

# check OS
OSTYPE="`uname -s`"

if [[ "$OSTYPE" == "linux"* ]]; then
    # ...
    git config --global core.autocrlf input
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    git config --global core.autocrlf input
elif [[ "$OSTYPE" == "msys"* ]]; then
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    git config --global core.autocrlf true
fi

# Add changes to git.
git add .

# Commit changes.
msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

# Push source and build repos.
git push origin master

# Come Back up to the Project Root
cd ..

# check OS
OSTYPE="`uname -s`"

if [[ "$OSTYPE" == "linux"* ]]; then
    # ...
    git config --global core.autocrlf input
elif [[ "$OSTYPE" == "darwin"* ]]; then
    # Mac OSX
    git config --global core.autocrlf input
elif [[ "$OSTYPE" == "msys"* ]]; then
    # Lightweight shell and GNU utilities compiled for Windows (part of MinGW)
    git config --global core.autocrlf true
fi

# blog 저장소 Commit & Push
git add .

msg="rebuilding site `date`"
if [ $# -eq 1 ]
  then msg="$1"
fi
git commit -m "$msg"

git push origin master