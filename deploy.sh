#!/bin/bash
cd /home/ubuntu/app
kubectl apply -f deployment.yaml
kubectl apply -f service.yaml 
