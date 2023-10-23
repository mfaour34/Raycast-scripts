#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Company
# @raycast.mode silent
#
# Optional parameters:
# @raycast.packageName Hubspot
# @raycast.icon ../images/hubspot.png
# @raycast.iconDark ../images/hubspot.png
# @raycast.argument1 { "type": "text", "placeholder": "CompanyId", "percentEncoded": true }

open https://app.hubspot.com/contacts/6028262/record/0-2/$1
