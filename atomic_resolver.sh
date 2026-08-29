#!/usr/bin/env bash
set -euo pipefail

parse_adapter() {
  local state="$1" count="$2" value=0
  for ((i = 0; i < count; i++)); do
    value=$(((  value + state + i * 88 ) % 997))
  done
  echo "$value"
}

parse_adapter 88 88
