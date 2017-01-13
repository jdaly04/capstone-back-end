API="http://localhost:4741"
URL_PATH="/products"
ID="3"
TOKEN="BAhJIiU1NDBkMTdkZDBjNzVkZmRmMWM5ZTcyNTgwNzc1MjkwYgY6BkVG--c05432a1126d1d3f474a5d843117c221e653bd79"


curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request PATCH \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \
  --data '{
    "product": {
      "before_photo_url": "http://imgur.com/PQuCqUt"
    }
  }'
