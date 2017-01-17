NAME="lead"
LENGTH=1.5
WIDTH=2.5
API="http://localhost:4741"
URL_PATH="/boards"
TOKEN="BAhJIiU3MTIxNjk3N2ViY2Q2OTI4Nzk4M2U0Nzc3MDI5NDQ1MgY6BkVG--35803ad27fd8b5307c25292ba2f640a120fc2852"
curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "board": {
      "name": "lead",
      "length": 2.99,
      "width": 1.99
    }
  }'
