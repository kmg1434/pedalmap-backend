API="http://localhost:4741"
URL_PATH="/boards/"
ID="2"
TOKEN="BAhJIiVlMTU4MjY2MmMwZTM0OGI1YjY2NWZlMzA3MjI4NDNjOQY6BkVG--849defe4c2650de44b349486c43ecb2d8469ed44"
curl "${API}${URL_PATH}${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"
