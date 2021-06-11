#!/bin/bash

pip install nbformat mimikit

git checkout test

python make_notebooks.py

# grab mmk version
export TAG="v$(pip list | grep mimikit |  awk '{print $2}')"

git commit -am $TAG

git tag -a $TAG -m $TAG

#git push

