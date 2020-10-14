#!/bin/sh

status=$(date | awk '{print $(NF-1)}')
if [ $status == "WIB" ]
then
    ls -lh
fi