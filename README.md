Git LFS Docker Image
====================

This is a simple project for building and publishing a minimalist Alpine Docker
image with Git and git-lfs preinstalled.

Usage
-----

    docker run -it --rm git-lfs:latest <git-lfs-subcommand> [subcommand-args...]

**Example:**

    docker run -it --rm git-lfs:latest clone https://github.com/garrettheath4/git-lfs-docker.git

