#!/bin/bash

# Step 1: Make a GET request and capture the headers to extract the CSRF token
csrf_token=$(curl -s -D - "https://login.wifionice.de/de/" -o /dev/null | \
             grep 'Set-Cookie: csrf' | \
             awk '{print $2}' | \
             sed 's/csrf=//' | sed 's/;.*//')

# Ensure CSRF token was extracted
if [ -z "$csrf_token" ]; then
  echo "CSRF token could not be extracted."
  exit 1
fi

echo "Extracted CSRF token: $csrf_token"

# Step 2: Make a POST request with the CSRF token in the body and as a cookie
response=$(curl -s -X POST "https://login.wifionice.de/de/" \
           -H "Content-Type: application/x-www-form-urlencoded" \
           -d "login=true&CSRFToken=$csrf_token" \
           -b "csrf=$csrf_token")

# Optionally, echo the response or handle it as needed
echo "Response from POST request:"
echo "$response"

