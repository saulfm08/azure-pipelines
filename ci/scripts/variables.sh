#!/bin/bash
set -e

echo "Evaluating variables to the .npmrc file."

cd $SYSTEM_DEFAULTWORKINGDIRECTORY/build/

touch .npmrc
cat > .npmrc << EOF
registry=$NPMREGISTRYURL
always-auth=true
EOF
cat .npmrc

echo -e "\nEvaluating variables to the .env file.\n"
touch .env
cat > .env << EOF
SAMPLE_VARIABLE=$VARIABLE_FROM_VARIABLE_GROUP
DEFAULT_LANG=TS
EOF
cat .env

echo "Over and out!"
