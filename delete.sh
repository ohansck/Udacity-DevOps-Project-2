#!/bin/bash

STACKNAME=kingsley-devops-${1}
REGION=us-east-1

echo Initiating stack deletion...

aws cloudformation delete-stack --stack-name $STACKNAME --region=$REGION

echo Deletion of stack ${STACKNAME} initiated...