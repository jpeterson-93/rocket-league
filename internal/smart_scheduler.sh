#!/usr/bin/env bash
set -euo pipefail

render_resolver() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 55 ) % 997))
  done
  echo "$value"
}

render_resolver 55 55
