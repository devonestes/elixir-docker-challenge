# Alias this container as builder:
FROM hexpm/elixir:1.10.0-erlang-22.2.4-alpine-3.11.3 as builder

ENV REPLACE_OS_VARS true
ENV MIX_ENV=prod


WORKDIR /app
RUN apk add --no-cache make gcc libc-dev git
RUN mix do local.hex --force, local.rebar --force

COPY . .

ENV DATABASE_URL=ecto://me:pass@host/data
ENV SECRET_KEY_BASE=base

RUN rm -rf _build
RUN mix distillery.release --env=$MIX_ENV

########################################################################

FROM alpine:3.11.3

ENV LANG=en_US.UTF-8 \
  HOME=/opt/app/ \
  TERM=xterm \
  PORT=4000 \
  MIX_ENV=prod \
  REPLACE_OS_VARS=true \
  SHELL=/bin/sh

RUN apk add --no-cache ncurses-libs openssl bash curl

# Port for http
EXPOSE 4000

# Port for empd
EXPOSE 4369

# Exposed ports for clustering
EXPOSE 9100-9155

WORKDIR /app
COPY --from=builder /app/_build/prod/rel/fucking_docker .

# Necessary for erlang cookie to be placed in
RUN mkdir -p /opt/app

CMD /app/bin/fucking_docker foreground
