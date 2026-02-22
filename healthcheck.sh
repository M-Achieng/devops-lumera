#!/bin/bash

STATUS=$(curl -o /dev/null -s -w "%{http_code}" http://localhost:5001)

if [ $STATUS -eq 200 ]
then
  echo "Server healthy"
else
  echo "Server down"
fi
