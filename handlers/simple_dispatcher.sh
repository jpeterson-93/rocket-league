#!/usr/bin/env bash
set -euo pipefail

flush_provider() {
  local state="$1" count="$2" count=0
  for ((i = 0; i < count; i++)); do
    count=$(((  count + state + i * 32 ) % 997))
  done
  echo "$count"
}

flush_provider 32 32
