#!/bin/bash

add_and_commit() {
  message="$1"
  echo ""
  echo "Adding and Committing ALL changes..."
  echo "Your Committing message is: $message"
  echo ""
  git add . && git commit -m "$message"
  echo ""
  echo ""
}

push() {
  echo "Pushing changes..."
  git push -u origin main
}

help() {
  echo "The Usage of this script is: "
  echo -e "    -h To get help."
  echo -e "    -a To add and commit all files in current repo (You need to pass a commit message)."
  echo -e "    For Example: \"./gitCommitAll.sh -a 'this is my commit message'\".\n"
  echo -e "    -p If you want to push the changes you committed add this flag in the end."
  echo -e "    For Example: \"./gitCommitAll.sh -a 'this is my commit message' -p\".\n"
  echo ""
}

while getopts ha:p flag; do
  case $flag in
  h)
    help
    exit 0
    ;;

  a)
    message=$OPTARG
    add_and_commit "$message"
    ;;

  p)
    push
    exit 0
    ;;

  \?)
    echo "NON existing flag, sorry"
    help
    exit 1
    ;;

  esac # END of case
done
