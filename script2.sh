#!/bin/bash

# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -q $PACKAGE; then
    echo "$PACKAGE is installed."

    apt show $PACKAGE 2>/dev/null | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git)
        echo "Git: the version control system that powers open source collaboration."
        ;;
    firefox)
        echo "Firefox: open web browser created by Mozilla."
        ;;
    vlc)
        echo "VLC: free media player that plays almost any format."
        ;;
    python3)
        echo "Python: powerful open-source programming language."
        ;;
esac
