#!/bin/bash

# This script deletes the CloudFormation stack that was created by 'deployStack.sh'
# It assumes that the stack name is 'Tomcat10' and that the AWS CLI profile is named 'default'
# It also assumes that the AWS CLI is installed and configured

# Check if the AWS CLI is installed
if ! which aws &> /dev/null
then
    echo "AWS CLI is not installed. Please install it before running this script."
    echo "Do not run this script using sudo, it will not find the aws command when switching users."
    exit 1
fi

aws cloudformation delete-stack --profile default --stack-name Tomcat10

# Array of spinner characters
spinner=( '/' '-' '\' '|' )

# Wait until the stack is deleted
while true; do
    if aws cloudformation describe-stacks --profile default --stack-name Tomcat10 2>&1 | grep -q 'does not exist'; then
        echo -e "\nStack deleted successfully"
        break
    else
        for i in "${spinner[@]}"
        do
            echo -ne "\rWaiting for stack to delete...$i"
            sleep 0.2
        done
    fi
done