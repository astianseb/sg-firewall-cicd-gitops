#!/bin/bash
STORAGE_BUCKET_TFSTATE=$(terraform output | awk '/tfstate_bucket_name/ {print $3}' | tr -d '"')
PROD_PROJECT_ID=$(terraform output | awk '/prod-project-id/ {print $3}' | tr -d '"')
PROD_PROJECT_VPC_INTERNAL=$(terraform output | awk '/prod-project-vpc-internal/ {print $3}' | tr -d '"')
DEV_PROJECT_ID=$(terraform output | awk '/dev-project-id/ {print $3}' | tr -d '"')
DEV_PROJECT_VPC_INTERNAL=$(terraform output | awk '/dev-project-vpc-internal/ {print $3}' | tr -d '"')

sed -i s/STORAGE_BUCKET_TFSTATE/$STORAGE_BUCKET_TFSTATE/g ../environments/prod/backend.tf
sed -i s/PROD_PROJECT_ID/$PROD_PROJECT_ID/g ../environments/prod/variables.tf
sed -i s/PROD_PROJECT_VPC_INTERNAL/$PROD_PROJECT_VPC_INTERNAL/g ../environments/prod/variables.tf

sed -i s/STORAGE_BUCKET_TFSTATE/$STORAGE_BUCKET_TFSTATE/g ../environments/dev/backend.tf
sed -i s/DEV_PROJECT_ID/$DEV_PROJECT_ID/g ../environments/dev/variables.tf
sed -i s/DEV_PROJECT_VPC_INTERNAL/$DEV_PROJECT_VPC_INTERNAL/g ../environments/dev/variables.tf


echo $STORAGE_BUCKET_TFSTATE
echo $PROD_PROJECT_ID
echo $PROD_PROJECT_VPC_INTERNAL
echo $DEV_PROJECT_ID
echo $DEV_PROJECT_VPC_INTERNAL