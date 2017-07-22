#!/bin/bash

set -e
aws cloudformation create-stack --stack-name $1 --template-url https://s3-us-west-2.amazonaws.com/dms-cf-templates/cfn_master.json --parameters https://s3-us-west-2.amazonaws.com/dms-cf-templates/launch_params.json --profile=personal

# aws cloudformation create-stack --stack-name $1 --template-body file://cfn-master.json --parameters file://launch-params.json --capabilities CAPABILITY_IAM --disable-rollback
    