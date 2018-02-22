# Must be included before using e.g. PORT_EXAMPLE
include ../ports.mk

# Files that should be included in handout.tar.gz
HANDOUT=INTRO.md

# Arguments to docker run
DOCKER_ARGS=-p $(PORT_EXAMPLE):1337

# Docker image name
DOCKER_NAME=example

# Files to be included in the Docker image
DOCKER_DEPS=run example

# Must be included at the bottom
include ../build.mk
