defmodule Titan.Repo do
  use Ecto.Repo,
    otp_app: :titan,
    adapter: Ecto.Adapters.Postgres
end
