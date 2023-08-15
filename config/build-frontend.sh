#!/bin/bash
cd ./frontend
yarn build
rm -rf /root/frontend-dist/*
cp -r ./dist/* /root/frontend-dist/
echo -e "\033[32mBUILD SUCCESS\033[0m"