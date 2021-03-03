[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/automated/frederikp/python-poetry-alpine)](https://hub.docker.com/repository/docker/frederikp/python-poetry-alpine)
[![Docker Cloud Automated build](https://img.shields.io/docker/cloud/build/frederikp/python-poetry-alpine)](https://hub.docker.com/repository/docker/frederikp/python-poetry-alpine)

# python-poetry-alpine
Alpine based Dockerfile for python poetry dependency management

## Updating docker images for latest poetry version

Test whether the build works using latest poetry version and adjust Dockerfile accordingly.

`git tag poetry1.1.4`

`git push -f --tags`

## Adding support for latest python version

Change `hooks/build` accordingly and adjust build settings on docker hub.