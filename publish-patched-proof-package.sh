#!/bin/sh

npm login

BASEDIR=$(dirname "$0")
cd $BASEDIR/packages/proof
cp package.json package-backup.json
rm package.json
cp package-patched.json package.json
npm publish 
rm package.json
mv package-backup.json package.json
