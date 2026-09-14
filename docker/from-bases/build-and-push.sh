#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
HUB_USER="${HUB_USER:-timurkri}"
REPO="${REPO:-hardened-from}"
REGISTRY="${HUB_USER}/${REPO}"

sanitize() {
  echo "$1" | tr '/:' '--' | tr '[:upper:]' '[:lower:]'
}

while IFS= read -r base; do
  [[ -z "$base" || "$base" == \#* ]] && continue
  tag="$(sanitize "$base")"
  dir="${ROOT}/${tag}"
  mkdir -p "$dir"
  cat >"${dir}/Dockerfile" <<EOF
FROM ${base}
LABEL org.opencontainers.image.source="${base}"
LABEL org.opencontainers.image.title="${HUB_USER} wrapper of ${base}"
EOF
  image="${REGISTRY}:${tag}"
  echo "==> pulling ${base}"
  docker pull "$base"
  echo "==> building ${image} FROM ${base}"
  DOCKER_BUILDKIT=0 docker build --pull=false -t "$image" "$dir"
  echo "==> pushing ${image}"
  docker push "$image"
done <"${ROOT}/images.txt"

echo "done"
