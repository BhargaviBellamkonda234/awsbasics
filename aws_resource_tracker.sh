#!/bin/bash

###########
# Author: Bhargavi
# Date: Mar 1
# Version : v1
# This script will report the aws resource usage
##########



set -x

#Aws S3
# EC2
#LAmba
#IAM users



# Setting the log file path
log_file="/home/ubuntu/logfile.log"


# list s3 buckets
echo "Print list of s3 buckets"
aws s3 ls >> "$log_file"


# list ec2 instances
echo "Print list of ec2"
#aws ec2 describe-instances
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> "$log_file"

# list aws lambda
echo "Print list of lambda functions"
aws lambda list-functions >> "$log_file"

#list IAM users
echo "Print list of IAM users"
aws iam list-users >> "$log_file"
