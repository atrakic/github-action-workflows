# Helm values image tag updater

This action updates image tag value for a given helm package.

## Inputs

## `repo`

**Required** The name of the github repository.

## `gh_token`

**Required** The Personal Access Token (PAT) that the action will use for git operations.

## app_name

**Required** The name of the helm package.

## image_tag

**Required** The image tag to be used in new helm package.

## Outputs

## `values`

The contents of values.yaml file.

## Example usage

```
- name: Update helm image tag
  uses: atrakic/github-actions/helm-image-tag-updater-action@main
  with:
    repo: 'github.com/atrakic/helm-charts.git'
    token: ${{ secrets.GIT_TOKEN }}
    app_name: 'foo'
    image_tag: 'v1.12'
    commiter: '${{ github.actor }}'
    author: '${{ github.actor }}@users.noreply.github.com'
```
