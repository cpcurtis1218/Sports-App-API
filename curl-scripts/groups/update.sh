#!/bin/bash

curl "http://localhost:4741/groups/${ID}" \
  --include \
  --request PATCH \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "group": {
      "about": "'"${ABOUT}"'"
    }
  }'

echo
