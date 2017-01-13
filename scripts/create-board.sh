NAME="lead"
LENGTH=1.5
WIDTH=2.5
API="http://localhost:4741"
URL_PATH="/boards"
TOKEN="BAhJIiU5NWE0ZTViMWUwMjhhNDk3NDQ0Njg0NTFiNTVkMjJmNwY6BkVG--f3ef78248f3f4aa2d9feb610c799ace25b8d078c"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "board": {
      "name": "lead",
      "length": 2,
      "width": 1
    }
  }'
