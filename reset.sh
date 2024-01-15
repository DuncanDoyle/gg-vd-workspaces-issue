#!/bin/sh

# Delete routetables
kubectl delete -f routetables/api-example-com-rt.yaml

# Delete services and virtual destinations
kubectl delete -f apis/httpbin.yaml
kubectl delete -f virtualdestinations/httpbin-vd.yaml

# Delete VirtualGateways
kubectl delete -f virtualgateways/vg.yaml

# Delete the workspaces.
kubectl delete -f workspaces/gg-demo-single-default-workspace.yaml
kubectl delete -f workspaces/gg-demo-single-default-workspacesettings.yaml

kubectl delete -f workspaces/gateways-workspace.yaml
kubectl delete -f workspaces/gateways-workspacesettings.yaml
kubectl delete -f workspaces/httpbin-workspace.yaml
kubectl delete -f workspaces/httpbin-workspacesettings.yaml

# Delete the namespace.
kubectl delete ns httpbin