#!/bin/bash
# Ubuntu AMI: ami-00ddb0e5626798373
# Windows AMI ami-0be29bafdaad782db

NAME=$1
VALUE=$2

echo saving AMI parameter to SSM...

aws ssm put-parameter --name $NAME --value $VALUE --type String  --data-type aws:ec2:image --tags Key=Linux-OS,Value=Ubuntu-18