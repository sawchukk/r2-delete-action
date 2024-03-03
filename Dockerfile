FROM python:3.8-alpine

LABEL "com.github.actions.name"="R2 Delete"
LABEL "com.github.actions.description"="Delete an object from an R2 bucket"
LABEL "com.github.actions.icon"="refresh-cw"
LABEL "com.github.actions.color"="green"

LABEL version="0.5.1"
LABEL repository="https://github.com/sawchukk/r2-delete-action"

# https://github.com/aws/aws-cli/blob/master/CHANGELOG.rst
ENV AWSCLI_VERSION='1.18.14'

RUN pip install --quiet --no-cache-dir awscli==${AWSCLI_VERSION}

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]
