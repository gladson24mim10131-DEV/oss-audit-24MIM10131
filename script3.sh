#!/bin/bash

# Script 3: Disk and Permission Auditor
# This script checks important system directories

DIRS=("/etc" "/var/log" "/home" "/usr/bin" "/tmp")

echo "Directory Audit Report"
echo "----------------------"

for DIR in "${DIRS[@]}"; do
    if [ -d "$DIR" ]; then

        PERMS=$(ls -ld $DIR | awk '{print $1, $3, $4}')
        SIZE=$(du -sh $DIR 2>/dev/null | cut -f1)

        echo "$DIR => Permissions: $PERMS | Size: $SIZE"

    else
        echo "$DIR does not exist"
    fi
done


# Check Git config directory

CONFIG_DIR="$HOME/.gitconfig"

echo ""
echo "Checking Git configuration file..."

if [ -f "$CONFIG_DIR" ]; then
    ls -l $CONFIG_DIR
else
    echo "Git configuration file not found."
fi
