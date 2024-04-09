#!/bin/sh

# Install Argo CS
kubectl create namespace argocd
kubectl create namespace hyperswitch-helm
kubectl create namespace hyperswitch

kubectl apply -n argocd -f ./installation/install-argocd.yaml

# Wait for Argo CD components to be ready
echo "Waiting for Argo CD to be fully operational......"
kubectl wait --for=condition=available --timeout=600s -n argocd deploy/argocd-server

# Apply application definitions
kubectl apply -n argocd -f ./applications/
