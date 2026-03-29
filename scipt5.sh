#!/bin/bash

# Script 5: Open Source Manifesto Generator

echo "--------------------------------"
echo " Open Source Manifesto Generator "
echo "--------------------------------"

echo ""
echo "Answer the following questions:"
echo ""

read -p "1. Name an open-source project that inspires you: " PROJECT
read -p "2. What value do you think open-source promotes the most? " VALUE
read -p "3. What kind of software would you like to share with the community? " SOFTWARE

DATE=$(date '+%d %B %Y')
USER=$(whoami)

OUTPUT="manifesto_$USER.txt"

echo "" > $OUTPUT
echo "Open Source Manifesto" >> $OUTPUT
echo "Written by $USER on $DATE" >> $OUTPUT
echo "" >> $OUTPUT

echo "For me, open source represents $VALUE." >> $OUTPUT
echo "Projects like $PROJECT show how people from around the world can collaborate." >> $OUTPUT
echo "One day I hope to build $SOFTWARE and release it freely for everyone." >> $OUTPUT
echo "Open knowledge allows innovation, learning, and collective progress." >> $OUTPUT

echo ""
echo "Manifesto saved to $OUTPUT"
echo ""
cat $OUTPUT
