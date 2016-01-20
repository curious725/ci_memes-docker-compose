#!/bin/bash
# Solano CI worker_setup hook (http://docs.solanolabs.com/Setup/setup-hooks/)

set -o errexit -o pipefail # Exit on error

# Start Docker containers and store the log where it will automatically be attached to a build page (http://docs.solanolabs.com/Setup/interacting-with-build-environment/)
sudo docker-compose up -d

# Setup the test database
grep -v ^"CREATE DATABASE" db-init/ci_memes.sql | grep -v ^USE > tests/create-test-db.sql
mysql -u$TDDIUM_DB_USER -p$TDDIUM_DB_PASSWORD $TDDIUM_DB_NAME < tests/create-test-db.sql

# Give the docker containers a bit of time to start up
sleep 15
