#!/bin/bash

# käynnistetään flask-palvelin taustalle
poetry run python3 src/index.py &

# odetetaan, että palvelin on valmiina ottamaan vastaan pyyntöjä
while [[ "$(curl -s -o /dev/null -w ''%{http_code}'' localhost:5000/ping)" != "200" ]]; 
  do sleep 1; 
done

# suoritetaan testit
poetry run robot src/e2e

status=$?

kill $(lsof -t -i:5000)

exit $status
