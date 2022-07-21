#!/bin/bash

# Before running this shell script,
# 1. You only need to do so if you have changed the definition of PgxPool
# 2. Ensure you've installed mockgen, from github.com/golang/mock
# Version 1.5 seems to have been originally used for this:
# go install github.com/golang/mock/mockgen@v1.5.0

set -e
set -o pipefail
set -u

mockgen -destination=pgx_pool_mock.go -package=pgxpoolmock . PgxPool

