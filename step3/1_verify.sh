#!/bin/bash


# Call the API endpoint
response=$(curl -s http://localhost:80/hello)

# Check if the status attribute is present and its value is "success"
if [[ $(echo $response | grep -o '"status":"success"') != '"status":"success"' ]]; then
  echo "API /hello tidak ditemukan"
  exit 1
fi

# API returned success, so do something here
echo "OK"