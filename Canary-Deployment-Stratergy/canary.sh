#!/bin/bash 

# Create canary deployment in Kubernetes 

kubectl apply -f canary-deployment.yml -n josh
