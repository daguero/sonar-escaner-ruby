FROM ciricihq/gitlab-sonar-scanner:2.1.0

MAINTAINER Datys

ENV BUILD_PACKAGES="curl-dev ruby-dev build-base git cmake bash" \
    DEV_PACKAGES="zlib-dev libxml2-dev libxslt-dev tzdata yaml-dev postgresql-dev libffi-dev libc-dev" \
    RUBY_PACKAGES="ruby ruby-io-console ruby-json yaml nodejs"

RUN apk --update --upgrade add $BUILD_PACKAGES $RUBY_PACKAGES $DEV_PACKAGES 

RUN gem install rubocop

COPY Dockerfile /
