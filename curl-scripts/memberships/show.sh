#!/bin/bash

curl "http://localhost:4741/memberships/${USERID}" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \

echo
