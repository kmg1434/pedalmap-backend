#!/bin/bash

API="http://localhost:4741"
URL_PATH="/sign-out"
ID="1"
TOKEN="BAhJIiVhNmM5NGIyYWJiOTUyMzUwYTUwMTM0N2IxY2YyOTA4NwY6BkVG--61d68bd78b21837c75a6c1b3dca9f45a4d64ab72"
curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"

echo
