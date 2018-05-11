#!/bin/bash

ENV="PROD"

if [ "$ENV" = "PROD" ] ;then
	cd /home/xingyong/projects/public-info
	#echo $ENV
	echo "prod env"
elif [ "$ENV" = "DEV" ] ;then
	cd /home/matrix/projects/public-info
	#echo $ENV
else
	echo "unknown running env,exit."
	exit -1
fi

echo "running..."
git add .
git commit -m 'info change'
git push
