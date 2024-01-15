#!/bin/sh

########################################################################################
kubectl delete -f workspaces/gateways-workspace.yaml
kubectl delete -f workspaces/gateways-workspacesettings.yaml
kubectl delete -f workspaces/httpbin-workspace.yaml
kubectl delete -f workspaces/httpbin-workspacesettings.yaml
########################################################################################
kubectl apply -f workspaces/gg-demo-single-default-workspace.yaml
kubectl apply -f workspaces/gg-demo-single-default-workspacesettings.yaml
########################################################################################