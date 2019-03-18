#!/bin/bash

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null && pwd )"

source ~/.dotfileprefs

echo sonar user: ${SONAR_USER}
echo sonar base branch: $2
echo sonar exclusions: ${SONAR_EXCLUSIONS}
echo sonar access key: ${SONAR_ACCESS_KEY} 
echo sonar secret key: ${SONAR_SECRET_KEY} 
echo sonar host: ${SONAR_HOST}

cd $DEV_DIR/$1

CURRENT_BRANCH=`git rev-parse --abbrev-ref HEAD`

echo -n "sonar password for user ${SONAR_USER}:"
read -s SONAR_PASSWORD;

echo 
echo "running Sonar analisys for ${CURRENT_BRANCH} against $2"

echo
echo "running unit test coverage"
mvn clean install -Pdefault,coverage

mvn -B org.sonarsource.scanner.maven:sonar-maven-plugin:3.6.0.1398:sonar -Dsonar.projectName="local ${SONAR_USER} ${CURRENT_BRANCH}" -Dsonar.branch="$2" -Dsonar.exclusions="${SONAR_EXCLUSIONS}" -Dmaven.deploy.skip=true -Daws.accessKeyId=${SONAR_ACCESS_KEY} -Daws.secretKey=${SONAR_SECRET_KEY} -Dsonar.host.url=${SONAR_HOST} -Dsonar.login=${SONAR_USER} -Dsonar.password=${SONAR_PASSWORD}