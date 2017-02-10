FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=0.6.9

RUN gem install eventhub-command --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["eh"]
CMD ["--help"]
