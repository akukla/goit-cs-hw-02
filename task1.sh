#!/bin/bash

# Define an array of websites
websites=("https://google.com" "https://facebook.com" "https://twitter.com")

# Loop through the array
for website in "${websites[@]}"
do
  # Use curl to check if the website is accessible
  if curl --output /dev/null --silent --head --fail "$website"; then
    echo "$website is UP"
  else
    echo "$website is DOWN"
  fi
done > website_status.txt

echo "Website status has been saved to website_status.txt"
