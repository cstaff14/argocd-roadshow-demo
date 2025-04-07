#!/bin/bash

# A shell script to generate user namespaces. Must imput the number of users in the lab environment

if [ $# -ne 1 ]; then
  echo "Error: Please provide exactly one argument."
  exit 1
fi

if ! [[ "$1" =~ ^-?[0-9]+$ ]]; then
  echo "Error: Input must be an integer."
  exit 1
fi

num_users=$1

for i in `seq 1 $num_users`
do
  echo user$i
  oc new-project gitops-user$i
  # Allow the project to be managed by gitops
  oc label namespace gitops-user$i argocd.argoproj.io/managed-by=openshift-gitops
  oc adm policy add-role-to-user admin user$i -n gitops-user$i
done