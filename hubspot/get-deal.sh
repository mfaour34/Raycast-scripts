#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Deal
# @raycast.mode silent
#
# Optional parameters:
# @raycast.packageName Hubspot
# @raycast.icon images/hubspot.png
# @raycast.iconDark images/hubspot.png.png
# @raycast.argument1 { "type": "text", "placeholder": "DealId", "percentEncoded": true }

open https://app.hubspot.com/contacts/6028262/record/0-3/$1
