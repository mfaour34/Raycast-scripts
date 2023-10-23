#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Get IBAN Germany
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 💳

# Documentation:
# @raycast.description Generates German IBAN
# @raycast.author Mohammed Faour
# @raycast.authorURL github.com/mfaour34

letter_map=("A=10" "B=11" "C=12" "D=13" "E=14" "F=15" "G=16" "H=17" "I=18" "J=19" "K=20" "L=21" "M=22" "N=23" "O=24" "P=25" "Q=26" "R=27" "S=28" "T=29" "U=30" "V=31" "W=32" "X=33" "Y=34" "Z=35")

function replaceChars {
    local conv_string="$1"
    for conv_char in $(seq 0 $((${#conv_string} - 1))); do
        local char="${conv_string:$conv_char:1}"
        for mapping in "${letter_map[@]}"; do
            local letter="${mapping%=*}"
            local value="${mapping#*=}"
            if [[ "$char" == "$letter" ]]; then
                conv_string="${conv_string//$char/$value}"
            fi
        done
    done
    echo "$conv_string"
}

function num_gen3 {
    local span="$1"
    local num2=""
    for ((i = 0; i < span; i++)); do
        num2+=$((RANDOM % 10)) # Generates a random digit (0-9)
    done
    echo "$num2"
}

function calcChecksum {
    local countryCode="$1"
    local randomPart="$2"
    local checkString="${randomPart}${countryCode}00"
    checkString=$(replaceChars "$checkString")
    local num=$(bc <<<"ibase=10; ${checkString} % 97")
    local checksum=$((98 - num))
    printf "%02d" "$checksum"
}

function generateGermanIBAN {
    local DE_randomPart="50010517$(num_gen3 10)"
    local DE_IBAN=$(calcChecksum "1314" "$DE_randomPart")
    echo "DE${DE_IBAN}${DE_randomPart}"
}

germanIBAN=$(generateGermanIBAN)
echo "$germanIBAN" | pbcopy
