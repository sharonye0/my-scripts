#!/bin/bash
if [ -d "./build/" ] 
then
    echo "Removing build/ directory..."
    rm -rf ./build/
    echo -e "Removing build/ Finished.\n"
    
    echo "Building project started..."
    npm run build
    echo -e "Finished Building.\n"
else
    echo "Building project started..."
    npm run build
    echo -e "Finished Building.\n"
fi

echo "Deploying started..."
firebase deploy
echo -e "Finished deploying.\n"
