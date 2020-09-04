#!/bin/bash
echo -ne "==> Setting up ConcourseCI..."
cd ~/concourse/bin
./concourse generate-key -t rsa -f ./session_signing_key
./concourse generate-key -t ssh -f ./tsa_host_key
./concourse generate-key -t ssh -f ./worker_key
cp worker_key.pub authorized_worker_keys
echo -ne "Keys have been successfuly generated!"
