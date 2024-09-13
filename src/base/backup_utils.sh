
formatDate() {
  FOLDER=""
  CURRENT_FORMAT=$1
  WEEK_OF_MONTH_CHAR="%W"
  if [ -n "$CURRENT_FORMAT" ]; then
    if [[ "$CURRENT_FORMAT" == *"$WEEK_OF_MONTH_CHAR"* ]]; then
      WEEKNUM=$((($(date +%-d)-1)/7+1))
      CURRENT_FORMAT="${CURRENT_FORMAT//$WEEK_OF_MONTH_CHAR/$WEEKNUM}"
    fi

    FOLDER=$(date +"$CURRENT_FORMAT")
  fi

  echo "$FOLDER"
}
