#!/bin/bash

ssh -o StrictHostKeyChecking=no -i /data/MyKeyPair.pem ec2-user@54.255.208.185 "source ~/.bash_profile; ~/update_snapshot.sh data 2 MyCluster01; pcluster update-compute-fleet --status STOP_REQUESTED --region ap-southeast-1 --cluster-name MyCluster01"
