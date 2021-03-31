#!/bin/bash

cd `git rev-parse --show-toplevel`

echo "<Project User>/<Project Name>"
echo ''
echo "User name? (current: '`git config project.user`')"
read projectUser
git config project.user $projectUser

echo ''
echo "Project name? (current: '`git config project.name`')"
read project
git config project.name $project

git config commit.template .github/.gitmessage
git config alias.hb '!f() { git checkout -b h/`git config project.name`#$1-$2; }; f'
git config alias.fb '!f() { git checkout -b i/`git config project.name`#$1-$2; }; f'
rm `git rev-parse --git-path hooks/prepare-commit-msg`
cp .github/prepare-commit-msg `git rev-parse --git-path hooks/`

echo ''
echo "init git done."
