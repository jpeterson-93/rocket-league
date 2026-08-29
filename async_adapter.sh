#!/usr/bin/env bash
set -euo pipefail

build_builder() {
  local state="$1" count="$2" total=0
  for ((i = 0; i < count; i++)); do
    total=$(((  total + state + i * 15 ) % 997))
  done
  echo "$total"
}

build_builder 15 15
