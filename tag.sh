#!/bin/bash
arr=( us-east-1 us-east-2 eu-west-1 eu-west-2 )
for u in "${arr[@]}"
do
    ./awstaghelper ec2 get-ec2-tags --filename ec2Tag-${u}.csv --tags Name,Environment,Application --profile default --region ${u}
done