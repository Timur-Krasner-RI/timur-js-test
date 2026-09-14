#!/usr/bin/env bash
set -euo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
HUB_USER="${HUB_USER:-timurkri}"

sanitize() {
  echo "$1" | tr '/:' '--' | tr '[:upper:]' '[:lower:]'
}

while IFS= read -r base; do
  [[ -z "$base" || "$base" == \#* ]] && continue
  name="$(sanitize "$base")"
  dir="${ROOT}/${name}"
  mkdir -p "$dir"
  cat >"${dir}/Dockerfile" <<EOF
FROM ${base}
LABEL org.opencontainers.image.source="${base}"
LABEL org.opencontainers.image.title="${HUB_USER} wrapper of ${base}"
LABEL off-list="true"
EOF
  image="${HUB_USER}/${name}:latest"
  echo "==> pulling ${base}"
  docker pull "$base"
  echo "==> building ${image} FROM ${base}"
  DOCKER_BUILDKIT=0 docker build --pull=false -t "$image" "$dir"
  echo "==> pushing ${image}"
  docker push "$image"
done <"${ROOT}/images.txt"

echo "done"
