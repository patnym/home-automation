#!/bin/bash
scp kubemaster:/home/patnym/.kube/config "${HOME}/.kube/home_config"

echo "Saved config to ${HOME}/.kube/home_config"


