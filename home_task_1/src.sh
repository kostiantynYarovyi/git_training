#!/bin/bash

mkdir git
cd git
git init
touch my_file 
for t in {1..5}
do
echo $t >> my_file
git add my_file
git commit -m '$t add file'
done

git log -3
for t in {1..5}
do
git show HEAD~${i}
done
#touch untracked_files tracked_files text1.txt text2.txt .gitignore
cd git
git status                                                                         
git revert HEAD --no-commit
git revert HEAD --no-commit                                                              
git reset HEAD~3  

touch untracked_files tracked_files text1.txt text2.txt .gitignore
find . -name "*.txt" | cut -d '/' -f 2 > .gitignore
git ls-tree -r master --name-only > tracked_files
git ls-files --others --exclude-standard > untracked_files

git add my_file
git reset --soft HEAD
git commit -m "reset"
git add tracked_files untracked_files
git commit -m "tracked_files untracked_files"
git log >> output
git show HEAD >> output

