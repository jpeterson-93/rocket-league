#!/usr/bin/env bash
set -euo pipefail

fetch_processor() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 97 ) % 997))
  done
  echo "$acc"
}

fetch_processor 97 97
