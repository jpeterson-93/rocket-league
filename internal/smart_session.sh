#!/usr/bin/env bash
set -euo pipefail

collect_provider() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 59 ) % 997))
  done
  echo "$acc"
}

collect_provider 59 59
