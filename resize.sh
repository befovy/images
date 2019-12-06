#!/usr/bin/env bash

git checkout --orphan latest_branch
git add -A
git commit -am "resize"
git branch -D master
git branch -m master

git fsck
git reflog expire --expire-unreachable=now --all
git gc --prune=now

git push -f origin master
git push --set-upstream origin master

