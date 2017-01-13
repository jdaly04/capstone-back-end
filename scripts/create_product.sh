#!/bin/bash
API="http://localhost:4741"
URL_PATH="/products"
TOKEN="BAhJIiU1NDBkMTdkZDBjNzVkZmRmMWM5ZTcyNTgwNzc1MjkwYgY6BkVG--c05432a1126d1d3f474a5d843117c221e653bd79"


curl "${API}${URL_PATH}" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN" \
  --data '{
    "product": {
      "before_photo_url": "http://imgur.com/77QFKdT",
      "description": "living room table sanded and painted",
      "price": 250,
      "after_photo_url": "http://imgur.com/HE35TDa"
    }
  }'

echo
