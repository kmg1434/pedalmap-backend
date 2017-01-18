NAME="jazz keys"
LENGTH=4.25
WIDTH=2.00
API="http://localhost:4741"
URL_PATH="/boards"
TOKEN="BAhJIiViNzA4NTk1NzdkNGY5NTUzNTc5OGJlNDM2NTlmYTIxMwY6BkVG--e7ca521ca1417eff842292edb5a573667b2d54f0"
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
