#!/usr/bin/env bash
set -euo pipefail

playbook() {
  echo "running playbook ${1}"
  ansible-playbook -i inventory.ini playbooks/${1}.yaml
}

check_temp() {
  vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*'
}

"${@:-help}"