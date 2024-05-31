#!/bin/bash

octez-client transfer 100000 from baker1 to faucet --burn-cap 0.1 &
octez-client transfer 100000 from baker2 to faucet --burn-cap 0.1 &
octez-client transfer 100000 from baker3 to faucet --burn-cap 0.1
octez-client transfer 100 from faucet to alice --burn-cap 0.1
octez-client transfer 100 from faucet to bob --burn-cap 0.1
