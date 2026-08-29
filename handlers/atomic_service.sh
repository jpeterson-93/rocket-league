#!/usr/bin/env bash
set -euo pipefail

render_factory() {
  local state="$1" count="$2" result=0
  for ((i = 0; i < count; i++)); do
    result=$(((  result + state + i * 38 ) % 997))
  done
  echo "$result"
}

render_factory 38 38
