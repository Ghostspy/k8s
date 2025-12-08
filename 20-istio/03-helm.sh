#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

helm_chart_version="1.27.1"

# dump out the applied YAML so it's saved as an artifact
touch istio-cni-template.yaml
helm template istio-cni istio/cni \
--namespace istio-system \
-f cni-values.yaml --set profile=ambient --version $helm_chart_version > cni-template.yaml 

helm upgrade --install --create-namespace --namespace istio-system istio-cni istio/cni -f cni-values.yaml --set profile=ambient --wait --version $helm_chart_version