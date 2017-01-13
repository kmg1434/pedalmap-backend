API="http://localhost:4741"
URL_PATH="/boards/"
ID="11"
TOKEN="BAhJIiU5NWE0ZTViMWUwMjhhNDk3NDQ0Njg0NTFiNTVkMjJmNwY6BkVG--f3ef78248f3f4aa2d9feb610c799ace25b8d078c"
curl "${API}${URL_PATH}${ID}" \
  --include \
  --request DELETE \
  --header "Authorization: Token token=$TOKEN"

echo
