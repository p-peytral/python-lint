# Container image that runs your code
FROM python:3.11.4-slim-bookworm


RUN apt-get update && apt-get install -y pylint
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
