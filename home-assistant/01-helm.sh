#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

helm_chart_version="0.3.21"

# dump out the applied YAML so it's saved as an artifact
touch home-assistant-helm-template.yaml
helm template home-assistant pajikos/home-assistant \
--create-namespace --namespace home-assistant \
-f values.yaml > home-assistant-helm-template.yaml --version $helm_chart_version

helm upgrade --install --create-namespace --namespace home-assistant home-assistant pajikos/home-assistant -f values.yaml --version $helm_chart_version