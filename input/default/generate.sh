#!/usr/bin/env bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"
OUTPUT=${OUTPUT:-$DIR/../../OUTPUT}
python -m dzcb \
    --pnwdigital \
    --seattledmr \
    --default-k7abd \
    --repeaterbook-state washington oregon \
    --repeaterbook-proximity-csv "$DIR/prox.csv" \
    --k7abd $DIR/k7abd \
    --farnsworth-template-json "$DIR/example-md-uv380.json" \
    --order "$DIR/order.csv" \
    --scanlists-json "$DIR/scanlists.json" \
$OUTPUT/$(basename "$DIR")
