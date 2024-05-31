#!/bin/bash
accounts=(
    "baker1 unencrypted:edsk4ArLQgBTLWG5FJmnGnT689VKoqhXwmDPBuGx3z4cvwU9MmrPZZ"
    "baker2 unencrypted:edsk2iVfcqdkcZLDkXU5jBWeaeqJN5bLokUyUNov4xbooMHDxxh5zs"
    "baker3 unencrypted:edsk48dFo2LiTch4sWXiHsYghzs4nuzzbGUGHgqNHYFrPg8iYNRUZR"
    "faucet unencrypted:edsk2uqQB9AY4FvioK2YMdfmyMrer5R8mGFyuaLLFfSRo8EoyNdht3"
    "alice unencrypted:edsk3QoqBuvdamxouPhin7swCvkQNgq4jP5KZPbwWNnwdZpSpJiEbq"
    "bob unencrypted:edsk3RFfvaFaxbHx8BMtEW1rKQcPtDML3LXjNqMNLCzC3wLC1bWbAt"
    "activator unencrypted:edsk31vznjHSSpGExDMHYASz45VZqXN4DPxvsa4hAyY8dHM28cZzp6"
)

for i in "${accounts[@]}"
do
    while IFS=' ' read -r name key; do
        octez-client --protocol ProtoALphaALphaALphaALphaALphaALphaALphaALphaDdp3zK import secret key $name $key
    done <<< "$i"
done

octez-client -block genesis activate protocol PtParisBxoLz5gzMmn3d9WBQNoPSZakgnkMC2VNuQ3KXfUtUQeZ \
    with fitness 1 and key activator and parameters ./params.json

octez-baker-PtParisB run remotely --liquidity-baking-toggle-vote pass &
