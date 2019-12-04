#!/bin/bash -e

if [ $# != 2 ]; then
    echo "Option is empty."
    exit 1
fi

OPTION=$1
TEST_NAME=$2

if [ $OPTION == 'start' ]; then

    curl -X POST -H 'Content-Type: application/json' \
        --data '{"text":"Start '"$TEST_NAME"'"}' \
        http://192.168.1.205:3000/hooks/J7SMXGcaM3t7etABM/GetSLK6SEyQtBWmAZA6py7rssQsvaxczkHvWNLui2yGcjLYf

elif [ $OPTION == 'finish' ]; then

    curl -X POST -H 'Content-Type: application/json' \
        --data '{"text":"Finish '"$TEST_NAME"'"}' \
        http://192.168.1.205:3000/hooks/J7SMXGcaM3t7etABM/GetSLK6SEyQtBWmAZA6py7rssQsvaxczkHvWNLui2yGcjLYf

else
    echo "Option is not specified."
    exit 1
fi
