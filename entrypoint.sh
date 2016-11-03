#!/bin/bash

VALID_INPUT=true

if [[ $USER == "" ]]; then
    echo "USER is a required parameter"
    VALID_INPUT=false
fi

if [[ $PASS == "" ]]; then
    echo "PASS is a required parameter"
    VALID_INPUT=false
fi

if [[ $HOST == "" ]]; then
    echo "HOST is a required parameter"
    VALID_INTPUT=false
fi

if [[ $VALID_INPUT == false ]]; then
    exit -1
fi

cat << EOF | openconnect $HOST --user=${USER} --passwd-on-stdin --no-cert-check -S -s "ocproxy -D 8080 -g"
$PASS
$PASS2
EOF
