curl "http://localhost:4741/dives" \
  --include \
  --request GET \
  --header "Authorization: Token token=${TOKEN}" \
  --header "Content-Type: application/json" \

echo
# sh scripts/dives/get-dives.sh
