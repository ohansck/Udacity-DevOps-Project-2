#!/bin/bash

STACKNAME=kingsley-devops-${1}
TEMPLATEBODY=udagram${1}.yml
PARAMETERFILE=udagram${1}-params.json
REGION=us-east-1

echo Initiating stack update...

aws cloudformation update-stack --stack-name $STACKNAME --template-body file://$TEMPLATEBODY  --parameters file://$PARAMETERFILE --capabilities "CAPABILITY_IAM" "CAPABILITY_NAMED_IAM" --region=$REGION

echo Update of stack ${STACKNAME} initiated...