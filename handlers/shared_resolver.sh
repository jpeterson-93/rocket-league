#!/usr/bin/env bash
set -euo pipefail

collect_cache() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 51 ) % 997))
  done
  echo "$count"
}

collect_cache 51 51
