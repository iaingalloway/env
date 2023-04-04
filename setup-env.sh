#!/bin/bash

set -euo pipefail

REPO_LOCATION="$( cd "$( dirname "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )"

./setup/bash/link-config-files.sh "$REPO_LOCATION"
