#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

helm_chart_version="1.18.2"

# dump out the applied YAML so it's saved as an artifact
touch rook-ceph-template.yaml
helm template rook-ceph-cluster rook-release/rook-ceph-cluster \
--namespace rook-ceph --set operatorNamespace=rook-ceph \
-f cluster-values.yaml > rook-ceph-cluster-template.yaml --version $helm_chart_version

helm upgrade --install --create-namespace --namespace rook-ceph rook-ceph-cluster --set operatorNamespace=rook-ceph rook-release/rook-ceph-cluster -f cluster-values.yaml --version $helm_chart_version