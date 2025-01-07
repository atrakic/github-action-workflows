#!/usr/bin/env bash

: "${GIT_REPO:?'You need to configure the GIT_REPO variable!'}"
: "${GIT_PAT:?'You need to configure the GIT_PAT variable!'}"
: "${APP_NAME:?'You need to configure the APP_NAME variable!'}"
: "${IMAGE_TAG:?'You need to configure the IMAGE_TAG variable!'}"

set -o errexit

git clone https://"${GIT_PAT}"@"${GIT_REPO}" "${GIT_REPO}"

# Change directory to the root of the repository
cd "${GIT_REPO}" || exit 1

# Find the app directory
APP_DIRECTORY=$(find . -type d -name "$APP_NAME")

# Update the image tag in the values file
sed -i -e "s/imageTag: .*/imageTag: $IMAGE_TAG/g" "$APP_DIRECTORY/values.yaml"

git config --global user.email "${GH_EMAIL:-no-reply@users.noreply.github.com}"
git config --global user.name "${GH_NAME:-GitOps}"

# Workarround for github envs
[[ -n "${GITHUB_ACTIONS}" ]] && git config --global --add safe.directory /github/workspace

git add .
git commit -m "Updated $APP_NAME to version: $IMAGE_TAG"
git push

values=$(cat "$APP_DIRECTORY/values.yaml")
echo "values=$values" >> "$GITHUB_OUTPUT"

# cleanup
rm -rf "${GIT_REPO}"
