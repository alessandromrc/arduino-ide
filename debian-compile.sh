#!/bin/bash

PS3='Please enter your choice: '
options=("Build" "Rebuild native dependencies" "Start" "Install Themes" "Install Indent Rainbow" "Quit")
select menu in "${options[@]}"
do
    case $menu in
        "Build")
            echo "Building The Arduino IDE"
            yarn
        echo "Arduino IDE Builted";;
        "Rebuild native dependencies")
            echo "Rebuilding All The Native Dependencies"
            yarn rebuild:electron
        echo "All The Native Dependencies Builted";;
        "Start")
            echo "Starting The Arduino IDE"
        yarn start;;
        "Install Themes")
            cp -r ".\ext\vsc-material-theme" ".\plugins\vsc-material-theme"
        echo "Themes Installed";;
        "Install Indent Rainbow")
        cp -r ".\ext\indent-rainbow" ".\plugins\indent-rainbow";;
        "Quit")
            break
        ;;
        *) echo "Invalid!";;
    esac
done
