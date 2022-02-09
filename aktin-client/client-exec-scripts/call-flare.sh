#/bin/bash 

FLARE_BASE_URL=${FLARE_BASE_URL:-"http://flare:8080"}
CLIENT_OBFUSCATE=${CLIENT_OBFUSCATE:-true}

QUERY_INPUT=`cat`

RESP=$(curl --location --request POST "$FLARE_BASE_URL/query/execute" \
--header 'Accept-Encoding: CSQ' \
--header 'Content-Type: application/json' \
--data-raw "$QUERY_INPUT")

if [ $CLIENT_OBFUSCATE = true ]; then
  if [ $RESP != 0 ];then
    RESP=$(($RESP - ($RESP % 10) + 10))
  fi
fi

printf "$RESP"