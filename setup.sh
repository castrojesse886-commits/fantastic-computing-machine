#!/usr/bin/env bash
set -euo pipefail

# Detect Termux/Android environment
if [[ "${PREFIX:-}" == */com.termux/* ]] || [[ "${OSTYPE:-}" == linux-android* ]]; then
  pkg update
  pkg install -y clang cmake make openssl git
else
  sudo apt-get update
  sudo apt-get install -y build-essential cmake libssl-dev git
fi
