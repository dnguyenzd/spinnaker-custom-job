#!/bin/bash

BASE64_MANIFEST=$(jsonnet -S deployment.jsonnet | base64 | tr -d '\b')
echo 'SPINNAKER_CONFIG_JSON={"type": "embedded/base64", "reference": "'${BASE64_MANIFEST}'", "name": "deployment.yml"}'
