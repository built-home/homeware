#!/usr/bin/env bash
set -euo pipefail


playbook() {
  envsubst | ansible-playbook -vvv playbooks/$1.yaml -i inventory/$1/hosts.ini \
    --extra-vars \
    "ansible_user=${ANSIBLE_USER} \
    ansible_password=${ANSIBLE_PASSWORD}"
}

check_temp() {
  vcgencmd measure_temp | egrep -o '[0-9]*\.[0-9]*'
}

get_kubeconfig() {
  scp teaglebuilt@$KMASTER01:~/.kube/config ~/.kube/config
}

"${@:-help}"