#!/bin/sh

########################################################################################
kubectl delete -f workspaces/gg-demo-single-default-workspace.yaml
kubectl delete -f workspaces/gg-demo-single-default-workspacesettings.yaml
########################################################################################
kubectl apply -f workspaces/gateways-workspace.yaml
kubectl apply -f workspaces/gateways-workspacesettings.yaml
kubectl apply -f workspaces/httpbin-workspace.yaml
kubectl apply -f workspaces/httpbin-workspacesettings.yaml
########################################################################################