#!/bin/bash
function mkcd() {
  DIR="$*"
  if [ $# -lt 1 ]; then
    echo -e "\e[31mdirectory field can't be empty\n\e[0mmkcd <directory>"
    return
  fi
  mkdir "${DIR}" && cd "${DIR}"
} 

function cl() {
  DIR="$*";
  if [ $# -lt 1 ]; then
    DIR=$HOME;
  fi;
  builtin cd "${DIR}" && exa
}

function gh() {
  KEYWORD="$*";
  if [ $# -lt 1 ]; then
    echo -e "\e[31mcommand cannot be empty\n\e[0mgh <command>"
    return
  fi;
  cat ~/.config/.gitCommands | grep $KEYWORD
}


function gcnpr() {
  TICKET="$1";
  MESSAGE="$2";
  if [ $# -lt 2 ]; then
    echo -e "\e[31mcommand cannot be empty\n\e[0mgh <command>"
    return
  fi;
  git checkout -b $TICKET && git commit -m "$MESSAGE" && git push  origin $TICKET && git checkout -
}


function gcpr() {
  TICKET="$1";
  MESSAGE="$2";
  if [ $# -lt 2 ]; then
    echo -e "\e[31mcommand cannot be empty\n\e[0mgh <command>"
    return
  fi;
  git checkout $TICKET && git commit -m "$MESSAGE" && git push  origin $TICKET && git checkout -
}
