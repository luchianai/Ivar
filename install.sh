#!/bin/sh

# Exit If a Command Fails
set -eo pipefail

apk update

# Install mysqldump
apk add mysql-client
apk add mariadb-connector-c

# Install S3 Tools
apk add python3 py3-pip
pip install awscli --break-system-packages

# Cleanup
rm -rf /var/cache/apk/*
