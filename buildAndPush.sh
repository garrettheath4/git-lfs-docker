#!/usr/bin/env bash

docker build --tag git-lfs:latest --tag gcr.io/public-side-projects/git-lfs:latest .
docker push gcr.io/public-side-projects/git-lfs:latest
