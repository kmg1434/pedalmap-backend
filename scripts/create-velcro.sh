API="http://localhost:4741"
URL_PATH="/velcros"
TOKEN="BAhJIiVjZGEyODUzYmExYTc1NzY1ZTUyNDAwOWE4NzFmYmMwZAY6BkVG--a88b98e4cfe7a7f6e815d4c7d39a54ee61a2444e"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "velcro": {
      "board_id": 1,
      "pedal_id": 1
    }
  }'
