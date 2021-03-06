#!/bin/bash

SCRIPT_DIR=$(cd $(dirname $0); pwd)
BASE64_MANIFEST=$(jsonnet -S ${SCRIPT_DIR}/deployment.jsonnet | base64 | tr -d '\n')
echo 'SPINNAKER_CONFIG_JSON={"artifacts":[{"type": "embedded/base64", "reference": "'${BASE64_MANIFEST}'", "name": "deployment.yml"}]}'
