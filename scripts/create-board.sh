NAME="joel joel joel"
LENGTH=4.20
WIDTH=7.77
API="http://localhost:4741"
URL_PATH="/boards"
TOKEN="BAhJIiU3NzFiZTA1NTI1OGIwYWNjNmIxOWZlNTU4ZTg2ZjZjOAY6BkVG--a81896987a45fe7cbe1f4554e0d0ef6283afd279"
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
