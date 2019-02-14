# Since configuration is shared in umbrella projects, this file
# should only configure the :titan application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :titan, Titan.Repo,
  url: System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl: true
