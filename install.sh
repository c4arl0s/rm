#!/usr/bin/env bash

set -euo pipefail

readonly SOURCE_SCRIPT="rm.sh"
readonly INSTALL_DIR="/usr/local/bin"
readonly TARGET_COMMAND="rm"
readonly TARGET_PATH="${INSTALL_DIR}/${TARGET_COMMAND}"

if [[ ! -f "${SOURCE_SCRIPT}" ]]; then
  echo "Error: ${SOURCE_SCRIPT} was not found in the current directory." >&2
  exit 1
fi

echo "Installing ${TARGET_COMMAND} to ${TARGET_PATH}..."
sudo cp "${SOURCE_SCRIPT}" "${TARGET_PATH}"
sudo chmod +x "${TARGET_PATH}"

echo "Installation complete."
echo "Run '${TARGET_COMMAND}' <file>"
