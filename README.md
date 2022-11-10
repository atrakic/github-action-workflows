# github-action-workflows
This repository holds my collection for testing different GitHub Actions workflows.

### Close PR
[![close-pr](https://github.com/atrakic/github-action-workflows/actions/workflows/pr-close.yml/badge.svg)](https://github.com/atrakic/github-action-workflows/actions/workflows/pr-close.yml)

Run workflow when a PR has been closed (merged or not).
The workflow is located in [.github/workflows/pr-close.yml](.github/workflows/pr-close.yml).

### Validate PR
[![validate-pr](https://github.com/atrakic/github-action-workflows/actions/workflows/validate-pr.yml/badge.svg)](https://github.com/atrakic/github-action-workflows/actions/workflows/validate-pr.yml)

Validate PR with helper script.
The workflow is located in [.github/workflows/validate-pr.yml](.github/workflows/validate-pr.yml).

### composite-action
[![composite-action](https://github.com/atrakic/github-action-workflows/actions/workflows/composite-action.yml/badge.svg)](https://github.com/atrakic/github-action-workflows/actions/workflows/composite-action.yml)

Greet someone, as explained here: https://docs.github.com/en/actions/creating-actions/creating-a-composite-action.
The workflow is located in [.github/workflows/composite-action.yml](.github/workflows/composite-action.yml).


### docker-action
[![docker-action](https://github.com/atrakic/github-action-workflows/actions/workflows/docker_action.yml/badge.svg)](https://github.com/atrakic/github-action-workflows/actions/workflows/docker_action.yml)

Greet someone from docker container, as explained https://docs.github.com/en/actions/creating-actions/creating-a-docker-container-action.
The workflow is located in [.github/workflows/docker_action.yml](.github/workflows/docker_action.yml).


### Create issue
[![create_issue](https://github.com/atrakic/github-action-workflows/actions/workflows/create_issue.yml/badge.svg)](https://github.com/atrakic/github-action-workflows/actions/workflows/create_issue.yml)

### Stale issues
[![stalle-issues](https://github.com/atrakic/github-action-workflows/actions/workflows/stale.yml/badge.svg)](https://github.com/atrakic/github-action-workflows/actions/workflows/stale.yml)

If there are issues that are have not been resolved and have been open for a long time they will be marked as stale and eventually closed automatically.
The workflow is located in [.github/workflows/stale.yml](.github/workflows/stale.yml).

## Contributing

1. Fork the repository
2. Implement and test your workflow
3. Describe it shortly in the README
4. Open a pull request
