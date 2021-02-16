Git LFS Docker Image
====================

This is a simple project for building and publishing a minimalist Alpine Docker
image with Git and git-lfs preinstalled.

Usage
-----

    docker run -it --rm git-lfs:latest <git-lfs-subcommand> [subcommand-args...]

**Example:**

    docker run -it --rm git-lfs:latest clone https://github.com/garrettheath4/git-lfs-docker.git

Build and Publish
-----------------

Run the following script to have Docker locally build this image and then
install it both to your local Docker image repository and Google Cloud
Container Registry.

    ./buildAndPush.sh <new_version_for_docker_tag>

**Example:**

    ./buildAndPush.sh 1.2.1

