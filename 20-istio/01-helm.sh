#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

helm_chart_version="1.27.1"

# dump out the applied YAML so it's saved as an artifact
touch istio-base-template.yaml
helm template istio-base istio/base \
--namespace istio-system \
-f base-values.yaml --version $helm_chart_version > base-template.yaml 

helm upgrade --install --create-namespace --namespace istio-system istio-base istio/base -f base-values.yaml --wait --version $helm_chart_version