#!/bin/bash

# enter your date of birth
read -p "Enter your date of birth (YYYY-MM-DD): " dob

# Get the current date in YYYY-MM-DD format
current_date=$(date +%Y-%m-%d)

# Extract year, month, and day from the current date and birthdate
birth_year=$(date -d "$dob" +%Y)
birth_month=$(date -d "$dob" +%m)
birth_day=$(date -d "$dob" +%d)

current_year=$(date -d "$current_date" +%Y)
current_month=$(date -d "$current_date" +%m)
current_day=$(date -d "$current_date" +%d)

# Calculate the age
age=$((current_year - birth_year))

# Adjust age if the birth date hasn't occurred yet this year
if [[ "$current_month" -lt "$birth_month" ]] || { [[ "$current_month" -eq "$birth_month" ]] && [[ "$current_day" -lt "$birth_day" ]]; }; then
    age=$((age - 1))
fi

# Display the age
echo "Your age is: $age"
