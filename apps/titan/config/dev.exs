# Since configuration is shared in umbrella projects, this file
# should only configure the :titan application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# Configure your database
config :titan, Titan.Repo,
  username: "postgres",
  password: "postgres",
  database: "titan_dev",
  hostname: "localhost",
  port: 5964,
  pool_size: 10
