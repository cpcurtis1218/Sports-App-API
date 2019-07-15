#!/bin/bash

curl "http://localhost:4741/groups/${ID}" \
  --include \
  --request DELETE \

echo
