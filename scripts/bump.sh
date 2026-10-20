#!/usr/bin/env bash
# Updates version and sha256 of each cask to the latest GitHub release of its app.
#
#   scripts/bump.sh                 every cask
#   scripts/bump.sh ciro-cleaner    one cask
#
# The repository and the asset name come from the cask's url line, so a new cask needs no change
# here. Needs gh and curl. Commit and push the result.
set -euo pipefail
cd "$(dirname "$0")/.."

casks=("$@")
if [[ ${#casks[@]} -eq 0 ]]
then
  for file in Casks/*.rb
  do
    name="${file##*/}"
    casks+=("${name%.rb}")
  done
fi

for token in "${casks[@]}"
do
  file="Casks/${token}.rb"
  url="$(sed -n 's/^ *url "\(.*\)"$/\1/p' "${file}")"
  repo="$(echo "${url}" | sed -n 's|^https://github.com/\([^/]*/[^/]*\)/releases/.*|\1|p')"
  current="$(sed -n 's/^ *version "\(.*\)"$/\1/p' "${file}")"
  tag="$(gh release view -R "${repo}" --json tagName -q .tagName)"
  latest="${tag#v}"
  if [[ "${latest}" == "${current}" ]]
  then
    echo "${token}: ${current}, up to date"
    continue
  fi
  asset="${url//\#\{version\}/${latest}}"
  sha="$(curl -fsSL "${asset}" | shasum -a 256 | cut -d' ' -f1)"
  sed -i '' -e "s/^\( *version \)\".*\"$/\1\"${latest}\"/" -e "s/^\( *sha256 \)\".*\"$/\1\"${sha}\"/" "${file}"
  echo "${token}: ${current} -> ${latest}"
done
