#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

helm_chart_version="1.27.1"

# dump out the applied YAML so it's saved as an artifact
touch istio-ztunnel-template.yaml
helm template istio-ztunnel istio/ztunnel \
--namespace istio-system \
-f ztunnel-values.yaml --version $helm_chart_version > ztunnel-template.yaml 

helm upgrade --install --create-namespace --namespace istio-system istio-ztunnel istio/ztunnel -f ztunnel-values.yaml  --wait --version $helm_chart_version