#!/usr/bin/env bash
# Copyright 2023 The Kubernetes Authors.
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -o errexit
set -o nounset
set -o pipefail

DIR="$(dirname "${BASH_SOURCE[0]}")"

ROOT_DIR="$(realpath "${DIR}/..")"

failed=()

if [[ "${UPDATE_SHELL_FORMAT:-true}" == "true" ]]; then
  echo "[*] Update shell format..."
  "${ROOT_DIR}"/hack/update-shell-format.sh || failed+=(shell-format)
fi

if [[ "${UPDATE_SPELLING:-true}" == "true" ]]; then
  echo "[*] Update spelling..."
  "${ROOT_DIR}"/hack/update-spelling.sh || failed+=(spelling)
fi

if [[ "${#failed[@]}" != 0 ]]; then
  echo "Update failed for: ${failed[*]}"
  exit 1
fi
