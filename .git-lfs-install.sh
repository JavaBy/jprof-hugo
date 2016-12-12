#!/bin/bash

gitlfs="1.5.3"

mkdir -p $HOME/bin
wget "https://github.com/git-lfs/git-lfs/releases/download/v$(gitlfs)/git-lfs-linux-amd64-$(gitlfs).tar.gz"
tar xvfz "git-lfs-linux-amd64-$(gitlfs).tar.gz"
mv "git-lfs-$(gitlfs)/git-lfs" $HOME/bin/git-lfs
export PATH=$PATH:$HOME/bin/
