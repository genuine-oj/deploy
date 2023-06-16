#!/bin/bash
cd ./frontend
cat >config.json<<EOF
{
  "name": "$SITE_NAME",
  "title": "$SITE_TITLE",
  "useFooter": $USE_FOOTER,
  "footer": {
    "icp": "$FOOTER_ICP"
  },
  "allowRegister": $ALLOW_REGISTER,
  "sentenceApi": "$SENTENCE_PROVIDER"
}
EOF
yarn build
rm -rf /root/frontend-dist/*
cp -r ./dist/* /root/frontend-dist/
echo -e "\033[32mBUILD SUCCESS\033[0m"