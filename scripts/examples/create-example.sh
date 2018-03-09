#!/bin/bash

curl "http://localhost:4741/examples" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "example": {
      "text": "'"${TEXT}"'"
    }
  }'

echo
# TOKEN=BAhJIiVmOTQ5N2YxNTg0YzJiNGFjMDA4MmM3NTVjY2MxZmYxNgY6BkVG--a58d53ec5b04d98ac6ac137e8c5ed64af4656170  TEXT=hello sh scripts/examples/create-example.sh
