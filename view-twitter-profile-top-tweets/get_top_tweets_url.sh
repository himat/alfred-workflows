USER_PROFILE_URL=$(pbpaste) # ex. https://twitter.com/naval
USERNAME=$(echo "${USER_PROFILE_URL}" | cut -d "/" -f 4)

START_DATE="2016-01-01"
YESTERDAY_DATE=$(./deps/date -d '1 day ago' '+%Y-%m-%d')
END_DATE=${YESTERDAY_DATE}
MIN_FAVES=20

# echo $(date)

BEST_TWEETS_URL="https://twitter.com/search?q=(from%3A${USERNAME})%20min_faves%3A${MIN_FAVES}%20until%3A${END_DATE}%20since%3A${START_DATE}%20-filter%3Areplies&src=typed_query"

echo ${BEST_TWEETS_URL}
