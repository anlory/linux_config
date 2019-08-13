#!/bin/sh
cmd="repo sync -c -j4 --no-tags"
echo ${cmd} | sh
while [ $? -ne 0  ]
do
  echo cmd | sh
done
