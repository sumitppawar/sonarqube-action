#!/bin/bash

set -e

if [[ -z "${INPUT_PASSWORD}" ]]; then
	SONAR_PASSWORD="&& true"
else
	SONAR_PASSWORD="${INPUT_PASSWORD}"
fi

  sonar-scanner \
  -Dsonar.projectKey=abc \
  -Dsonar.sources=. \
  -Dsonar.host.url=abc\
  -Dsonar.login=abc \
  -Dsonar.analysis.mode=preview \
  -Dsonar.issuesReport.html.enable=true 

