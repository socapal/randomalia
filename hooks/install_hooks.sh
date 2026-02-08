#!/usr/bin/env bash
set -euo pipefail

repo_root=$(git rev-parse --show-toplevel)
mkdir -p "$repo_root/.git/hooks"

install -m 755 "$repo_root/hooks/pre-push" "$repo_root/.git/hooks/pre-push"

echo "Installed hooks to $repo_root/.git/hooks"
