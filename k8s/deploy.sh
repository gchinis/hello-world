#!/usr/bin/env bash

set -e

kubectl apply -f k8s/namespace.yml --record

kubectl apply -f k8s/serviceaccount.yml --record
kubectl apply -f k8s/deployer-role.yml --record
kubectl apply -f k8s/deployer-role-binding.yml --record

kubectl apply -f k8s/deployment.yml --record
kubectl apply -f k8s/service.yml --record
