#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

helm_chart_version="1.18.2"

# dump out the applied YAML so it's saved as an artifact
touch rook-ceph-operator-template.yaml
helm template rook-ceph rook-release/rook-ceph \
--create-namespace --namespace rook-ceph \
-f operator-values.yaml > rook-ceph-operator-template.yaml --version $helm_chart_version

helm upgrade --install --create-namespace --namespace rook-ceph rook-ceph rook-release/rook-ceph -f operator-values.yaml --version $helm_chart_version