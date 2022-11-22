#!/bin/bash

export PR_LABEL=$(curl \
-H "Accept: application/vnd.github+json" \
-H "Authorization: Bearer $GITHUB_TOKEN" \
--location --request GET "https://api.github.com/repos/fadi-mox-org/gh-circleci/pulls?head=fadi-mox-org:TEST-1&state=open" 2>&1 | grep -o '"name": "pentest"')

if [ -z ${PR_LABEL} ]; then
  echo "’PR_LABEL’ variable is not set"
else
  echo "’PR_LABEL is set and the value of PR_LABEL=$PR_LABEL"
fi
