#!/usr/bin/env bash
set -euo pipefail

sync_adapter() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 18 ) % 997))
  done
  echo "$total"
}

sync_adapter 18 18
