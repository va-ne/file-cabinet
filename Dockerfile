FROM ruby:2.2.1-slim

RUN apt-get update && apt-get install -qq -y --no-install-recommends build-essential libsqlite3-dev nodejs npm
# Ensure that our apt package list is updated and has basic build packages.

RUN mkdir -p /cabinet
WORKDIR /cabinet
COPY . .
# Add app files into docker image

COPY ./docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
ENTRYPOINT ["/docker-entrypoint.sh"]
# Add bundle entry point to handle bundle cache

ENV BUNDLE_PATH=/bundle \
    BUNDLE_BIN=/bundle/bin \
    GEM_HOME=/bundle
ENV PATH="${BUNDLE_BIN}:${PATH}"
# Bundle installs with binstubs to our custom /bundle/bin volume path. 
# Let system use those stubs.