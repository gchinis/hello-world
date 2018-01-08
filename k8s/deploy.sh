#!/usr/bin/env bash

set -e

cd "$(dirname "$0")"

kubectl apply -f namespace.yml --record

kubectl apply -f serviceaccount.yml --record
kubectl apply -f deployer-role.yml --record
kubectl apply -f deployer-role-binding.yml --record

kubectl apply -f deployment.yml --record
kubectl apply -f service.yml --record
