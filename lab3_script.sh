#!/bin/bash
# Authors : Michael Gonzales
# Date: 9/19/2019

#Problem 1 Code:
echo "Please enter a file name and then a regular expression."
echo "Filename: "
read filename
echo "Regular Expression : "
read regexpres
grep $regexpres $filename
echo "The number of phone numbers in regex_practice.txt is: "
grep -c '[0-9]\{3\}[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' regex_practice.txt
echo "The number of emails in regex_practice.txt is :"
grep -c '^[a-zA-Z0-9]\+@[a-zA-Z0-9]\+\.[a-z]\{2,\}' regex_practice.txt
echo "List of all phone numbers with 303 area code :"
grep -o '303[ -]\?[0-9]\{3\}[ -]\?[0-9]\{4\}' regex_practice.txt
grep '^[a-zA-Z0-9]\+@geocities.com' regex_practice.txt >> email_results.txt
sleep 1m #Needed this because my command line was opening up a new window and closing it the moment it finished