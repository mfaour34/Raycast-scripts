#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Get subscription by id
# @raycast.mode silent

# Optional parameters:
# @raycast.icon 🤖
# @raycast.argument1 { "type": "text", "placeholder": "subscriptionId", "percentEncoded": true }

# Documentation:
# @raycast.description Opens subscriptions retool and searches for subscription by id
# @raycast.author Mohammed Faour
# @raycast.authorURL github.com/mfaour34

subscription_id=$1

open "https://one.finn.auto/apps/e89ac37a-cac1-11ec-8eff-d739f6be6045/Operations/Subscriptions#selected_row=0&show_all=false&subscription_id=${subscription_id}"
