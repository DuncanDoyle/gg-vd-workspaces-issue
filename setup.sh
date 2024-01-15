#!/bin/sh

kubectl create ns httpbin

# Create the workspaces.
kubectl apply -f workspaces/gateways-workspace.yaml
kubectl apply -f workspaces/gateways-workspacesettings.yaml
kubectl apply -f workspaces/httpbin-workspace.yaml
kubectl apply -f workspaces/httpbin-workspacesettings.yaml

# Create VirtualGateways
kubectl apply -f virtualgateways/vg.yaml

# Deploy services and virtual destinations
kubectl apply -f apis/httpbin.yaml
kubectl apply -f virtualdestinations/httpbin-vd.yaml

# Finally we make the service available via the RouteTable
kubectl apply -f routetables/api-example-com-rt.yaml