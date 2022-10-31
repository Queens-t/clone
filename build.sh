#!/bin/sh

docker build -t 681283101814.dkr.ecr.ap-southeast-1.amazonaws.com/cashnow-ocr-service:$BUILD_NUMBER .
docker push 681283101814.dkr.ecr.ap-southeast-1.amazonaws.com/cashnow-ocr-service:$BUILD_NUMBER
docker tag 681283101814.dkr.ecr.ap-southeast-1.amazonaws.com/cashnow-ocr-service:$BUILD_NUMBER 681283101814.dkr.ecr.ap-southeast-1.amazonaws.com/cashnow-ocr-service:latest
docker push 681283101814.dkr.ecr.ap-southeast-1.amazonaws.com/cashnow-ocr-service:latest
