#!/bin/bash

curl "http://localhost:4741/groups/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --data '{
    "group": {
      "about": "'"${ABOUT}"'"
    }
  }'

echo
