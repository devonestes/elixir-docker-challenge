mix deps.get
DATABASE_URL=abc SECRET_KEY_BASE=base MIX_ENV=prod mix distillery.release
_build/prod/rel/fucking_docker/bin/fucking_docker console
