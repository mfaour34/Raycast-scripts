#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Get delivery by car-id
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "carId", "percentEncoded": true }

# Documentation:
# @raycast.description Opens delivery retool and searches for delivery by car-id
# @raycast.author Mohammed Faour
# @raycast.authorURL github.com/mfaour34

car_id=$1

open "https://one.finn.auto/apps/1e487108-2a07-11ed-9f37-5f8c15f8ac27/Operations/in_production_delivery_coordination_dashboard?_releaseVersion=latest#TrackingID=&carId=${car_id}&dealId=&vin="
