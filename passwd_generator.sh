#!/bin/bash

# Function to generate a random password
generate_password() {
  local length="$1"
  tr -dc 'A-Za-z0-9!@#$%^&*()_+{}[]|' < /dev/urandom | head -c "$length"
  echo
}

# Check if the script is provided with an argument (password length)
if [ $# -ne 1 ]; then
  echo "Usage: $0 <password_length>"
  exit 1
fi

# Extract the password length from the argument
password_length="$1"

# Check if the password length is a positive integer
if ! [[ "$password_length" =~ ^[0-9]+$ ]] || [ "$password_length" -le 0 ]; then
  echo "Please provide a positive integer as the password length."
  exit 1
fi

# Generate a random password and display it
password=$(generate_password "$password_length")
echo "Random password (length $password_length): $password"

