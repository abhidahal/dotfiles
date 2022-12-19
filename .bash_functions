#!/bin/bash
function mkcd() {
  DIR="$*"
  if [ $# -lt 1 ]; then
    echo -e "\e[31mdirectory field can't be empty\n\e[0mmkcd <directory>"
    return
  fi
  mkdir "${DIR}" && cd "${DIR}"
} 
