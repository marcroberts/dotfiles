#!/bin/bash

alias ll='ls -lh'
alias ..='cd ..'

alias gst='git status'
alias gpl='git pull'
alias gps='git pull && git push'
alias gdf='git diff | mate'
alias gci='git commit -v'
alias gad='git add .'
alias gbr='git branch'
alias gmg='git merge'
alias grb='git rebase'
alias grm="git status | grep deleted | awk '{print \$3}' | xargs git rm"
function gco {
  if [ -z "$1" ]; then
    git checkout master
  else
    git checkout $1
  fi
}

alias dbm='rake db:migrate db:test:clone'
alias dbd='rake db:drop'
alias dbc='rake db:create'

alias rt='ruby -Itest'
alias irb='irb --simple-prompt -r irb/completion -rubygems'
function cdgem {
  cd `gem env gemdir`/gems
  cd `ls | grep $1 | sort | tail -1`
}
function mategem {
  GEMDIR=`gem env gemdir`/gems
  mate $GEMDIR/`ls $GEMDIR | grep $1 | sort | tail -1`
}

alias ss='script/server'
alias sc='script/console'
alias sg='script/generate'
