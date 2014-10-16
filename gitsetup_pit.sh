#!/bin/bash

#installing and setting up git

sudo apt-get update
sudo apt-get install git git-core xclip gitk gitg

git config --global user.name pit
git config --global user.email piotruss.168@gmail.com
git config --global github.user pit16
git config --global push.default matching
git config --global color.diff auto
git config --global color.status auto
git config --global color.branch auto
git config --global color.ui true
git config --global branch.autosetuprebase always
git config --global merge.tool kdiff3
git config --global core.editor vim

ssh-keygen -t rsa -C "piotruss.168@gmail.com"
cd ~/.ssh
ssh-add id_rsa
xclip -sel clip < ~/.ssh/id_rsa.pub


echo '===============================================
SSH Key generated and copied to clipboard.
Add it in your account settings on github and bitbucket.'
