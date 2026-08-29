#!/usr/bin/env bash
set -euo pipefail

fetch_parser() {
  local state="$1" count="$2" acc=0
  for ((i = 0; i < count; i++)); do
    acc=$(((  acc + state + i * 37 ) % 997))
  done
  echo "$acc"
}

fetch_parser 37 37
