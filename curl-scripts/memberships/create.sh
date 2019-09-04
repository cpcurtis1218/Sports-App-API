#!/bin/bash

curl "http://localhost:4741/memberships" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "membership": {
      "user_id": "'"${USERID}"'",
      "group_id": "'"${GROUPID}"'"
    }
  }'

echo
