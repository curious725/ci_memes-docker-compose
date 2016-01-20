#!/bin/bash
# Solano CI post_worker hook (http://docs.solanolabs.com/Setup/setup-hooks/)

set -o errexit -o pipefail # Exit on error

# Capture docker-compose logs to location where they will be automatically be attached to a build page
# (http://docs.solanolabs.com/Setup/interacting-with-build-environment/)
sudo docker-compose logs > $HOME/results/$TDDIUM_SESSION_ID/session/docker-compose.log &
sleep 5 # Allow a bit of time to write the log file
sudo docker-compose stop
sleep 5 # Allow docker containers to gracefully shut down
