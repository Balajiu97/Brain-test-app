#!/bin/bash

cd /home/ubuntu/app

# Set kubeconfig path (save under ec2-user's home)
export KUBECONFIG=/home/ubuntu/.kube/config

# Make sure .kube directory exists for ec2-user
mkdir -p /home/ubuntu/.kube

# Set correct kubeconfig from EKS
aws eks update-kubeconfig \
  --region ap-south-1 \
  --name my-cluster-v2 \
  --kubeconfig /home/ubuntu/.kube/config

# (Optional) Test connection
kubectl cluster-info

# Deploy
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml
