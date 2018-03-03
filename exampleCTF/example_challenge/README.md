# Example challenge

This challenge shows how to package your own challenge.

## Checklist

  1. Create the file `Makefile` (See the commented `Makefile` in the current directory)
  2. Create a Dockerfile that builds/runs your challenge
  3. If your challenge is online, then choose a port number and add it to `ports.mk` in the parent directory
  4. Add the files to be given to the HANDOUTS variable
  5. Test that the challenge works/runs as described below

## How to run:

 * Run `make docker-build` to build the docker image
 * Run `make docker-start` to run the docker image locally, and `make docker-stop` to stop it again
 * Run `make handout.tar.gz` to generate the handout file for the challenge

