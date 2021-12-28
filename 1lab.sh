#!/bin/bash
mkdir grading

touch grading/grade{1,2,3}
head -5 bin/manage-files > grading/manage-files.txt
tail -3 bin/manage-files >> grading/manage-files.txt

cd grading/
cp manage-files.txt manage-files-copy.txt
cd

vim grading/manage-files-copy.txt 
ln grading/grade1 hardlink
ln -s grading/grade2 softlink
ls -l /boot > grading/longlisting.txt
