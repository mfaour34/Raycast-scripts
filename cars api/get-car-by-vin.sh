#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Get car by vin
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "vin", "percentEncoded": true }

# Documentation:
# @raycast.description Opens cars retool and searches for car by vin
# @raycast.author Mohammed Faour
# @raycast.authorURL github.com/mfaour34

vin=$1

open "https://one.finn.auto/apps/1e9460d0-a92a-11ec-8c78-2333a0aec55c/Operations%20-%20OpsDev/Cars#carId=&color=&compound=&model=&orderId=&productId=&rows_per_page=20&sa_number_received&status=&supplier=&variant=&vin=${vin}"
