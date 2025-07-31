#!/bin/bash
cd /home/ubuntu/app
aws eks update-kubeconfig --region ap-south-1 --name my-cluster-v2
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml 
