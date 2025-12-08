#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

helm_chart_version="1.27.1"

# dump out the applied YAML so it's saved as an artifact
touch istio-istiod-template.yaml
helm template istio-istiod istio/istiod \
--namespace istio-system \
-f istiod-values.yaml --set profile=ambient --version $helm_chart_version > istiod-template.yaml 

helm upgrade --install --create-namespace --namespace istio-system istio-istiod istio/istiod -f istiod-values.yaml --set profile=ambient --wait --version $helm_chart_version