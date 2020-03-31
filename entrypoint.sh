#!/bin/bash

set -e

if [[ -z "${INPUT_PASSWORD}" ]]; then
	SONAR_PASSWORD="&& true"
else
	SONAR_PASSWORD="${INPUT_PASSWORD}"
fi

  sonar-scanner \
  -Dsonar.projectKey=Gladiator \
  -Dsonar.sources=. \
  -Dsonar.host.url=http://3.209.122.243:9000 \
  -Dsonar.login=e0a8dc8cd673b666c1093c4d84eb32e8390826ea
  -Dsonar.analysis.mode=preview \
  -Dsonar.issuesReport.html.enable=true \

