#!/usr/bin/env bash
# https://docs.github.com/en/actions/using-workflows/events-that-trigger-workflows#repository_dispatch

set -euo pipefail

TOKEN=$1
OWNER=$2
REPO=$3

curl \
  -X POST \
  -H "Accept: application/vnd.github+json" \
  -H "Authorization: Bearer ${TOKEN}" \
  https://api.github.com/repos/"${OWNER}"/"${REPO}"/dispatches \
  -d '{
    "event_type":"test_result",
    "client_payload":
      {
        "passed":false,
        "message":"Error: timeout"
      }
    }'
