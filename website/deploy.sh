#!/bin/bash

S3_BUCKET_NAME=cloudfront-badafca9fd19

npm install
npm run build
aws s3 cp --recursive build s3://$S3_BUCKET_NAME/