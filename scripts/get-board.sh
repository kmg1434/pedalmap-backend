#!/bin/bash

API="http://localhost:4741"
URL_PATH="/boards/"
ID="1"
curl "${API}${URL_PATH}${ID}" \
  --include \
  --request GET \
  --header "Content-Type: application/json"

echo
