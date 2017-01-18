API="http://localhost:4741"
URL_PATH="/products"
ID="4"
TOKEN="BAhJIiUzYWJhNmUxNjRjYWZlYWMwNTgxNDRiOTJkYTA1NGYzMwY6BkVG--41d8208d12adf5e34f86a1b72e5473c784ec62d2"

curl "${API}${URL_PATH}/${ID}" \
  --include \
  --request DELETE \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=$TOKEN"
