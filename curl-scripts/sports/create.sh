#!/bin/bash

curl "http://localhost:4741/sports" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --data '{
    "sport": {
      "label": "'"${LABEL}"'",
      "location": "'"${LOC}"'",
      "date": "'"${DATE}"'"
    }
  }'

echo
