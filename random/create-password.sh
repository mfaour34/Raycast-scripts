#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Create Password
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🔐

# Documentation:
# @raycast.description Generate a strong password
# @raycast.author Mohammed Faour
# @raycast.authorURL github.com/mfaour34

generate_password() {
    local length="$1"
    local all_chars="ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789!@#$%^&*()-_+=<>?/[]{}|"
    local password=""
    for i in $(seq 1 "$length"); do
        password="$password${all_chars:RANDOM%${#all_chars}:1}"
    done
    echo "$password"
}

PASSWORD_LENGTH=12

strong_password=$(generate_password "$PASSWORD_LENGTH")

echo "$strong_password" | pbcopy
osascript -e 'tell application "System Events" to key code 53'
