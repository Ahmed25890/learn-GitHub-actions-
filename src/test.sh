#!/bin/bash

# src/test.sh
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

expected="hello Test"
output=$(node -e "console.log(require('${SCRIPT_DIR}/app.js')('Test'))")

if [ "$output" == "$expected" ]; then
  echo "test pass"
  exit 0
else
  echo "test failed: expected '$expected', got '$output'"
  exit 1
fi