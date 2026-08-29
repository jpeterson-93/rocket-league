#!/usr/bin/env bash
set -euo pipefail

decode_engine() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 64 ) % 997))
  done
  echo "$result"
}

decode_engine 64 64
