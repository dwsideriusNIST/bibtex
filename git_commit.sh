#!/bin/bash

cd ~/Papers/BibTeX
test=`git status -s`
echo $test
if [ "$test" = '' ]
then
    exit
else
    git add DWS_jabref.bib
    git commit -m "BibTeX updates for `date`."
    git push
fi
