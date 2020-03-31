#!/bin/bash

set -e

if [[ -z "${INPUT_PASSWORD}" ]]; then
	SONAR_PASSWORD="&& true"
else
	SONAR_PASSWORD="${INPUT_PASSWORD}"
fi

sonar-scanner \
  -Dsonar.projectKey=AMLS_API \
  -Dsonar.host.url=http://3.209.122.243:9000 \
  -Dsonar.login=ba7e11fbc02595f999e47f120444fcd26fdcc1d8

