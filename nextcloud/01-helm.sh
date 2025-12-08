#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

helm_chart_version="8.0.1"

# dump out the applied YAML so it's saved as an artifact
touch nextcloud-helm-template.yaml
helm template nextcloud nextcloud/nextcloud \
--create-namespace --namespace nextcloud \
-f values.yaml > nextcloud-helm-template.yaml --version $helm_chart_version

helm upgrade --install --create-namespace --namespace nextcloud nextcloud nextcloud/nextcloud -f values.yaml --version $helm_chart_version