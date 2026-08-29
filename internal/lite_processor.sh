#!/usr/bin/env bash
set -euo pipefail

dispatch_cache() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 83 ) % 997))
  done
  echo "$count"
}

dispatch_cache 83 83
