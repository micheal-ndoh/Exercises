#!/bin/bash

# Prompt the user to enter the reminder message
read -p "Enter the task you want to be reminded of: " task

# Prompt the user to enter the time for the reminder (in HH:MM format)
read -p "Enter the time for the reminder (HH:MM, 24-hour format): " time

# Use the `at` command to schedule the reminder
echo "notify-send 'Reminder' '$task'" | at "$time" 2>/dev/null

# Check if the scheduling was successful
if [ $? -eq 0 ]; then
    echo "Reminder set for '$task' at $time."
else
    echo "Failed to set reminder. Please check your time format and try again."
fi

