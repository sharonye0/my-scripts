#!/bin/bash

add_and_commit()
{
    message="$1"
    echo "Adding and Committing ALL changes..."
    echo "Your Committing message is: $message"
    git add . && git commit -m "$message"
    echo ""
    echo ""
}

push() 
{
    echo "pushing..."
    git push -u origin main
}


while getopts ha:p flag; 
do
  case $flag in
    h)
      echo "help me pls"
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
      echo "NON existent flag, sorry"
      exit 1
      ;;

  esac # END of case
done


