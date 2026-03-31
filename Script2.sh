#!/bin/bash

echo "Checking info for: git"

if command -v git &> /dev/null
then
    echo "Git is installed at $(which git)"
    echo "Version: $(git --version | awk '{print $3}')"
else
    echo "Git is NOT installed"
fi

echo "############################################"

echo "Git is a version control system created by Linus Torvalds, allowing devs to track changes to files over time"