#!/bin/bash

#enter the file path or name to search
read -p "Enter the path or name of the file you want to search for: " filename

# Check if the file exists
if [ -f "$filename" ]; then
    # Display the word count
    word_count=$(wc -w < "$filepath")
    echo "The file '$filepath' contains $word_count words."

    # Display the file creation date
    # Use 'stat' command to get the birth date (creation date) of the file
    creation_date=$(stat -c %w "$filepath")
    
    # If creation date is not available, fall back to modification date
    if [ "$creation_date" = "-" ]; then
        creation_date=$(stat -c %y "$filepath")
        echo "Creation date not available. Last modified date: $creation_date"
    else
        echo "Creation date: $creation_date"
    fi
else
    echo "File not found. Please check the path and try again."
fi

