NAME="funky bass"
LENGTH=1.5
WIDTH=2.5
API="http://localhost:4741"
URL_PATH="/boards"
TOKEN="BAhJIiU1NWY5NWIxZTUxNmM1ZmE4MjA3ZjdjOTI2YzEwZTM3MgY6BkVG--7729cb4125c38e0ef489fe21502b9ca5d5f6315d"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "board": {
      "name": "'"${NAME}"'",
      "length": "'"${LENGTH}"'",
      "width": "'"${WIDTH}"'"
    }
  }'
