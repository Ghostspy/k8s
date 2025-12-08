#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

helm_chart_version="0.15.2"

# dump out the applied YAML so it's saved as an artifact
touch metallb-helm-template.yaml
helm template metallb metallb/metallb \
--create-namespace --namespace metallb-system \
-f values.yaml --version $helm_chart_version > metallb-helm-template.yaml 

helm upgrade --install --create-namespace --namespace metallb-system metallb metallb/metallb -f values.yaml --version $helm_chart_version