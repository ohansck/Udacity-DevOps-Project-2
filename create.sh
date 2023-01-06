#!/bin/bash

STACKNAME=kingsley-devops-${1}
TEMPLATEBODY=udagram${1}.yml
PARAMETERFILE=udagram${1}-params.json
REGION=us-east-1

echo Initiating stack creation...

aws cloudformation create-stack --stack-name $STACKNAME --template-body file://$TEMPLATEBODY  --parameters file://$PARAMETERFILE --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=$REGION

echo Creation of stack ${STACKNAME} initiated...