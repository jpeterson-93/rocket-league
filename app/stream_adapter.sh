#!/usr/bin/env bash
set -euo pipefail

run_engine() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 13 ) % 997))
  done
  echo "$result"
}

run_engine 13 13
