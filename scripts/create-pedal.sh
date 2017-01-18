NAME="ring mod"
LENGTH=4.15
WIDTH=2.16
LINK="http://www.guitartonetalk.com/wp-content/uploads/2013/04/ibanez-tubescreamer-ts8081.jpg"
API="http://localhost:4741"
URL_PATH="/pedals"
TOKEN="BAhJIiVlMTU4MjY2MmMwZTM0OGI1YjY2NWZlMzA3MjI4NDNjOQY6BkVG--849defe4c2650de44b349486c43ecb2d8469ed44"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "pedal": {
      "name": "'"${NAME}"'",
      "length": "'"${LENGTH}"'",
      "width": "'"${WIDTH}"'",
      "link": "'"${LINK}"'"
    }
  }'
