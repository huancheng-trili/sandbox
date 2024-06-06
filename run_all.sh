#!/bin/sh
cd /playground
sudo apk add bash
sudo mkdir /tzclient
sudo mkdir /tznode
sudo chown 1000:1000 /tzclient
sudo chown 1000:1000 /tznode

echo "spinning up node..."
bash ./run_node.sh 2 --connection 0 &
sleep 10
bash ./run_baker.sh
sleep 10

bash ./setup.sh
sleep 10000000