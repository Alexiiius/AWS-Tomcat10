#!/bin/bash

# This script deploys the CloudFormation stack that creates the EC2 instance and the security group for the Tomcat server using the template in main.yml
# It assumes that the AWS CLI is installed and configured	

# If you want to use a different stack name, change the value of the --stack-name parameter below
# If you want to use a different AWS CLI profile, change the value of the --profile parameter below
# If you want to use a different AWS region, change the value of the --region parameter below


# Check if the AWS CLI is installed
if ! which aws &> /dev/null
then
    echo "AWS CLI is not installed. Please install it before running this script."
    echo "Do not run this script using sudo, it will not find the aws command when switching users."
    exit 1
fi

# Launch the CloudFormation stack
aws cloudformation deploy --profile default --stack-name Tomcat10 --template-file main.yml --region us-east-1