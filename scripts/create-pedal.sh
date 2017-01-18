NAME="tube scrambler"
LENGTH=3.15
WIDTH=2.51
LINK="http://www.guitartonetalk.com/wp-content/uploads/2013/04/ibanez-tubescreamer-ts8081.jpg"
API="http://localhost:4741"
URL_PATH="/pedals"
TOKEN="BAhJIiViNzA4NTk1NzdkNGY5NTUzNTc5OGJlNDM2NTlmYTIxMwY6BkVG--e7ca521ca1417eff842292edb5a573667b2d54f0"
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
