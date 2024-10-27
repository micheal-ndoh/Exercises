#!/bin/bash

# Prompt the user to input the number of names
read -p "Enter the number of names you want to input: " count

# Declare an array to store the names
names=()

# Loop to collect names from the user
for (( i=1; i<=count; i++ ))
do
    read -p "Enter name $i: " name
    names+=("$name")
done

# Select a random index and display the selected name
selected_index=$((RANDOM % count))
echo "${names[$selected_index]}, you have been selected lol!"

