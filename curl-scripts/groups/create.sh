#!/bin/bash

curl "http://localhost:4741/groups" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "group": {
      "sport": "'"${SPORT}"'",
      "city": "'"${CITY}"'",
      "state": "'"${STATE}"'",
      "date": "'"${DATE}"'",
      "time": "'"${TIME}"'",
      "about": "'"${ABOUT}"'",
      "user_id": "'"${USERID}"'"
    }
  }'

echo
