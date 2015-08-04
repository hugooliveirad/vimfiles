#!/bin/bash

set -e

echo 'updating...'

git pull origin master

vim +BundleInstall +qall

echo 'happy coding'
