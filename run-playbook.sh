#!/usr/bin/env bash

set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

PLAYBOOK="${1:-}"
shift || true

if [[ -z "$PLAYBOOK" ]]; then
    echo "Usage:"
    echo "  $0 <playbook.yml> [ansible-playbook arguments]"
    exit 1
fi

ANSIBLE_CONFIG="${SCRIPT_DIR}/ansible.cfg"

exec ansible-playbook \
    -i "${SCRIPT_DIR}/inventory" \
    "${SCRIPT_DIR}/${PLAYBOOK}" \
    "$@"
