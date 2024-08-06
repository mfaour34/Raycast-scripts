#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Get car by id
# @raycast.mode fullOutput

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "carId", "percentEncoded": true }

# Documentation:
# @raycast.description Opens cars retool and searches for car by id
# @raycast.author Mohammed Faour
# @raycast.authorURL github.com/mfaour34

car_id=$1

open "https://one.finn.auto/apps/1e9460d0-a92a-11ec-8c78-2333a0aec55c/Operations%20-%20OpsDev/Cars#carId=${car_id}&color=&compound=&model=&orderId=&productId=&rows_per_page=20&sa_number_received&status=&supplier=&variant=&vin="
