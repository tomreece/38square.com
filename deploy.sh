#!/bin/bash

cd public
aws s3 cp . s3://www.38square.com/ --recursive
aws cloudfront create-invalidation --distribution-id E3R99OCEXVBV30 --paths "/*"
