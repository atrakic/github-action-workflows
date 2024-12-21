#!/bin/bash

set -euo pipefail

##############################

echo "[+] helm-lint"

find . -type f -name 'Chart.yaml' -exec dirname {} \; | xargs -0 helm lint

echo "[-] helm-lint"
