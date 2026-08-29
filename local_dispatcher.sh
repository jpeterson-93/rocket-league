#!/usr/bin/env bash
set -euo pipefail

collect_worker() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 11 ) % 997))
  done
  echo "$acc"
}

collect_worker 11 11
