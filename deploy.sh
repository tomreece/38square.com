#!/bin/bash

cd public
aws s3 cp . s3://www.38square.com/ --recursive --exclude ".DS_Store"
aws cloudfront create-invalidation --distribution-id E3R99OCEXVBV30 --paths "/*"
