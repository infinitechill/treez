#!/bin/bash

# if no directory supplied, use current directory
if [ $# -eq 0 ]
  then
    ls -R | grep ":$" | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/--/|/'

# if directory was given, use it instead
else
  cwd=$(pwd)
  cd "$1"
  find ./ -type d | sed -e 's/:$//' -e 's/[^-][^\/]*\//--/g' -e 's/^/   /' -e 's/--/|/'
  cd $cwd
fi