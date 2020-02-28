defmodule FuckingDocker.Repo do
  use Ecto.Repo,
    otp_app: :fucking_docker,
    adapter: Ecto.Adapters.Postgres
end
