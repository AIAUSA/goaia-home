#!/bin/bash
pip install --user awscli
aws configure set aws_access_key_id $AWSKeyID
aws configure set aws_secret_access_key $AWSSecretKey
aws configure set default.region us-east-1
aws configure set default.output json
cd dist
find . -name '*.html' ! -iname 'index.html' -exec sh -c 'mv "$0" "${0%.html}"' {} \;
aws s3 sync . s3://build.goaia.org --exclude "*" --include "*.svg" --include "*.otf" --include "*.woff" --include "*.svg.css" --cache-control "max-age=1314000" 
aws s3 sync . s3://build.goaia.org --exclude "*" --include "*.jpg" --include "*.png" --include "*.gif" --cache-control "max-age=86400"
aws s3 sync . s3://build.goaia.org --exclude "*" --include "*.*" --cache-control "max-age=1800"
aws s3 sync . s3://build.goaia.org --content-type "text/html" --cache-control "max-age=1800"

echo "pushed to aws"