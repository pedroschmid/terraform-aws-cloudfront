#!/bin/bash

S3_BUCKET_NAME=

npm install
npm run build
aws s3 cp --recursive build s3://$S3_BUCKET_NAME/