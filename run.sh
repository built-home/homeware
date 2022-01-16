#!/usr/bin/env bash
set -euo pipefail

playbook() {
  echo "running playbook ${1}"
  envsubst | ansible-playbook -i inventory/hosts.ini \
    --ask-vault-pass  \
    --extra-vars \
    "ansible_user=${ANSIBLE_USER} \
    ansible_password=${ANSIBLE_PASSWORD}" \
    playbooks/${1}.yaml
}

check_temp() {
  vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*'
}

"${@:-help}"