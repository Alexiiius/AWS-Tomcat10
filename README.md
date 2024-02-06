# AWS CloudFormation Mini Stack

This repository contains a simple AWS CloudFormation stack that creates an Ubuntu20.04 EC2 instance with an associated security group and a Tomcat service fully configured serving a test app. It also includes two scripts to deploy and delete the stack using the AWS CLI.

## Table of Contents

- [Files](#files)
- [Usage](#usage)
- [Requirements](#requirements)
- [Disclaimer](#disclaimer)

## Files

- `tomcat.yml`: This is the CloudFormation template that defines the resources for the stack. It creates an EC2 instance and a security group. It also installs and configures Tomcat, along with its dependencies such as Java. In addition, it compiles a small test application and deploys it on Tomcat for execution.

- `deployStack.sh`: This script deploys the CloudFormation stack using the AWS CLI. It assumes that the AWS CLI is installed and configured, and that the stack name is 'Tomcat10'.

- `deleteStack.sh`: This script deletes the CloudFormation stack using the AWS CLI. It also assumes that the AWS CLI is installed and configured, and that the stack name is 'Tomcat10'.

- `app`: This is the test application that is compiled and deployed on Tomcat as part of the CloudFormation stack creation. Its a simple 'hello world'.

## Usage

1. Make sure you have the AWS CLI installed and configured with a profile named 'default'.

2. To deploy the stack, run the `deployStack.sh` script:

    ```bash
    bash deployStack.sh
    ```

3. To delete the stack, run the `deleteStack.sh` script:

    ```bash
    bash deleteStack.sh
    ```

Please note that the stack name 'Tomcat10' is hardcoded in the scripts. If you want to use a different stack name, you will need to modify the scripts accordingly.

## Requirements

- AWS CLI
- AWS account with permissions to create EC2 instances and security groups
- Bash shell to run the scripts

## Disclaimer

Please use this stack at your own risk. Always check the resources that are being created and ensure that they comply with your security and cost requirements.
