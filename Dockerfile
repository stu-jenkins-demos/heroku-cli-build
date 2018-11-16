FROM node:10.5.0-alpine
MAINTAINER Stu Brown (stu@stubrown.uk.net)
LABEL version='7.4.11'
LABEL description='Heroku CLI packaged on alpine linux'

ENV HEROKU_CLI_VERSION '7.4.11'
RUN yarn global add heroku@$HEROKU_CLI_VERSION

ENTRYPOINT ["/usr/local/bin/heroku"]
