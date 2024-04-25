# Container image that runs your code
FROM ricardobchaves6/python-lint-image:1.4.0

RUN apk add libffi-dev
# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]
