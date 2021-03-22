export GIT_SSL_NO_VERIFY=1

git clone http://gitlab.ow.s/oleksandra.bella/merging.git
cd merging/

git pull origin master
git checkout branch1
git merge --ff-only branch1
git rebase branch2
git branch -d branch2 branch1
git log >  outpu
