#!/bin/bash

set -e

if [[ -z "${INPUT_PASSWORD}" ]]; then
	SONAR_PASSWORD="&& true"
else
	SONAR_PASSWORD="${INPUT_PASSWORD}"
fi

sonar-scanner \
  -Dsonar.projectKey=key \
  -Dsonar.host.url=http://host \
  -Dsonar.login=token

