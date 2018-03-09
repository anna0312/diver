#!/bin/bash

#curl "http://localhost:4741/dives/" \
curl "https://afternoon-basin-31565.herokuapp.com/dives/" \
  --include \
  --request POST \
  --header "Content-Type: application/json" \
  --header "Authorization: Token token=${TOKEN}" \
  --data '{
    "dive": {
      "user_id": "'"${user_id}"'",
      "location": "'"${location}"'",
      "date": "'"${date}"'",
      "max_depth": "'"${max_depth}"'",
      "duration": "'"${duration}"'",
      "psi_used": "'"${psi_used}"'",
      "weight_used": "'"${weight_used}"'",
      "rating": "'"${rating}"'",
      "notes": "'"${notes}"'",
      "make_public": "'"${make_public}"'"
    }
  }'


echo
# user_id=1 location="nicelocation"  date="2018-2-3" max_depth=60 duration=30 psi_used=2000 weight_used=10 rating=4 notes="nice" make_public=1 sh scripts/dives/create-dive.sh
# TOKEN=BAhJIiU0NjVkMDZjOTgxNmJjNTE0YTU2ZjBjMDdjMDhiYzRhOAY6BkVG--025ccc035956f7d9033809aaf66b3e1e9c9117e4 USER_ID=1 LOCATION="nicelocation"  DATE="2018-2-3" MAX_DEPTH=60 DURATION=30 PSI_USED=2000 WEIGHT_USED=10 RATING=4 NOTES="nice" MAKE_PUBLIC=1 sh scripts/dives/create-dive.sh
# USER_ID=1 LOCATION="nicelocation" sh scripts/dives/create-dive.sh
