NAME="jazz keys"
LENGTH=4.20
WIDTH=7.77
API="http://localhost:4741"
URL_PATH="/boards"
TOKEN="BAhJIiVlMTU4MjY2MmMwZTM0OGI1YjY2NWZlMzA3MjI4NDNjOQY6BkVG--849defe4c2650de44b349486c43ecb2d8469ed44"
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
