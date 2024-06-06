#!/bin/bash

docker run -it --rm \
  -v $(pwd):/playground \
  -p 8732:8732 \
  -e TEZOS_CLIENT_DIR=/tzclient \
  -e DATA_DIR=/tznode \
  --entrypoint=/playground/run_all.sh tezos/tezos:octez-v20.0
