#!/bin/sh

repo_name=$1
test -z $repo_name && echo "Repo name required." 1>&2 && exit 1

#mkdir ~/build/repos/$repo_name

curl -u 'defenestratexp' https://api.github.com/user/repos -d "{\"name\":\"$repo_name\"}"
#cd ~/bulid/repos/$repo_name && git init
git remote add origin "https://github.com/defenestratexp/$repo_name.git"
git clone https://github.com/defenestratexp/$repo_name.git