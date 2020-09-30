#!/bin/bash

if [ "${INPUT_AWS_NUKE_VERSION}" != "" ]; then
  VERSION=${INPUT_AWS_NUKE_VERSION}
else
  echo "Input aws_nuke_version cannot be empty"
  exit 1
fi

if [ "${INPUT_AWS_NUKE_CONFIG}" == "" ]; then
  echo "Input aws_nuke_version cannot be empty"
  exit 1
fi

if [ -f "${GITHUB_WORKSPACE}/${INPUT_AWS_NUKE_CONFIG}" ]; then
  CONFIG="${GITHUB_WORKSPACE}/${INPUT_AWS_NUKE_CONFIG}"
else
  echo "'${GITHUB_WORKSPACE}/${INPUT_AWS_NUKE_CONFIG}' is not readable."
  exit 1
fi

echo "Fetching aws-nuke binary from https://github.com/rebuy-de/aws-nuke/releases/download/v${VERSION}/aws-nuke-v${VERSION}-linux-amd64"
curl -sSL -o /usr/local/bin/aws-nuke https://github.com/rebuy-de/aws-nuke/releases/download/v${VERSION}/aws-nuke-v${VERSION}-linux-amd64
chmod a+x /usr/local/bin/aws-nuke

echo "Executing: aws-nuke --no-dry-run --force -c ${CONFIG}"
aws-nuke --no-dry-run --force -c ${CONFIG}