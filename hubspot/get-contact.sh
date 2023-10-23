#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Contact
# @raycast.mode silent
#
# Optional parameters:
# @raycast.packageName Hubspot
# @raycast.icon ../images/hubspot.png
# @raycast.iconDark ../images/hubspot.png
# @raycast.argument1 { "type": "text", "placeholder": "ContactId", "percentEncoded": true }

open https://app.hubspot.com/contacts/6028262/record/0-1/$1
