#!/usr/bin/env bash

set -euo pipefail

OPENCODE_MEM_CACHE="${HOME}/.cache/opencode/packages/opencode-mem@latest"

if [ -f "${OPENCODE_MEM_CACHE}/node_modules/opencode-mem/dist/plugin.js" ]; then
	if [ ! -f "${OPENCODE_MEM_CACHE}/node_modules/sharp/build/Release/sharp-darwin-arm64v8.node" ] && \
	   [ ! -f "${OPENCODE_MEM_CACHE}/node_modules/sharp/build/Release/sharp-linux-x64v8.node" ]; then
		if command -v bun >/dev/null 2>&1; then
			echo "Fixing opencode-mem native modules..."
			cd "${OPENCODE_MEM_CACHE}" && rm -rf node_modules && bun install
		else
			echo "Warning: bun not found. Install mise tools first: mise install"
		fi
	fi
fi