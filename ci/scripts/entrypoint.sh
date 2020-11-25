#!/bin/sh
set -e

echo "Evaluating variables to the .npmrc file:"
cat > .npmrc << EOF
registry=$NPM_REGISTRY_URL
always-auth=true
//$NPM_REGISTRY_PATH/:_authToken=$NPM_AUTH_TOKEN
EOF
cat .npmrc

echo ""
echo "Run NPM install:"
npm install

echo "Run NPM build:"
npm run build

echo ""
echo "Cheking Build ID value:"
cat _next/BUILD_ID

echo ""
echo "Over and out!"

exec "$@"
