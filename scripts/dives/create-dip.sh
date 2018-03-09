#!/bin/bash
  curl "http://localhost:4741/dives" \
    --include \
    --request POST \
    --header "Content-Type: application/json" \
    --data '{
      "dive": {
        "user_id": "'"${user_id}"'",
        "location": "'"${location}"'"
      }
    }'


echo
# TOKEN=BAhJIiUyZDI0YzFmYmM4ODZlYjIyNmE2YTg4NmRjYzliNjI4NgY6BkVG--2e3dabb87c6934e64085500a998d8bad51f64a25 USER_ID=1 LOCATION="nicelocation"  DATE="2018-2-3" MAX_DEPTH=60 DURATION=30 PSI_USED=2000 WEIGHT_USED=10 RATING=4 NOTES="nice" MAKE_PUBLIC=1 sh scripts/dives/create-dive.sh
# TOKEN=BAhJIiUyZDI0YzFmYmM4ODZlYjIyNmE2YTg4NmRjYzliNjI4NgY6BkVG--2e3dabb87c6934e64085500a998d8bad51f64a25 USER_ID=1 LOCATION="nicelocation" sh scripts/dives/create-dive.sh
# USER_ID=1 LOCATION="nicelocation" sh scripts/dives/create-dive.sh
