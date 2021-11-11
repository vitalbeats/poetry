# Poetry on Python

This repository provides a pre-installed version of Poetry, on top of Python, for development and CI use.

## Usage
In your project, just start `FROM vitalbeats/poetry:1.1.x`.

## Building and Pushing

We build the image locally and push it to Docker Hub.

Note: The user must be logged in into our public docker registry via `docker login`.

```bash
docker build . --tag=vitalbeats/poetry:1.1.11
docker push vitalbeats/poetry:1.1.11

docker build . --tag=vitalbeats/poetry:latest
docker push vitalbeats/poetry:latest
```
## Running Locally
```bash
docker run \
    --name vb_poetry \
    -it --rm poetry:1.1.11 \
    --version
```