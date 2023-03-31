#! /bin/bash
# username.sh
# author:  Art Song
# date:	3/27/2023

echo "Please enter a new username."
echo "The username must have these:"
echo "- start with a lowercase letter"
echo "- contain only lowercase letters, digits, or underscores"
echo "- be between 3 and 12 characters long"

read -r username

regex='^[a-z][a-z0-9_]{2,11}$'

while [[ ! $username =~ $regex ]]
do
    echo "Invalid username. Please try again."
    read -r username
done

echo "Thank you! The username $username is valid."
exit 0
