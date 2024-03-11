#!/bin/bash

git clone https://"${GIT_PAT}"@"${REPO}" "${REPO}"

# Change directory to the root of the repository
cd "${REPO}" || exit

# Find the app directory
APP_DIRECTORY=$(find . -type d -name "$APP_NAME")

git config --global user.email "${GH_EMAIL:-no-reply@foo.bar}"
git config --global user.name "${GH_NAME:-GitOps}"

# Update the image tag in the values file
sed -i -e "s/imageTag: .*/imageTag: $IMAGE_TAG/g" "$APP_DIRECTORY/values.yaml"

git add .
git commit -m "Updated $APP_NAME to version: $IMAGE_TAG"
git push

values=$(cat "$APP_DIRECTORY/values.yaml")
echo "values=$values" >> "$GITHUB_OUTPUT"

