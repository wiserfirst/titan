# Since configuration is shared in umbrella projects, this file
# should only configure the :titan_web application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

# General application configuration
config :titan_web,
  ecto_repos: [Titan.Repo],
  generators: [context_app: :titan]

# Configures the endpoint
config :titan_web, TitanWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "IvxinhYnOqzct/l3MG+fU0UGzFEZkr26PlIyhQ7fNNK4S15JjFh5cElTAE9zD9k0",
  render_errors: [view: TitanWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: TitanWeb.PubSub, adapter: Phoenix.PubSub.PG2]

config :titan_web,
  basic_auth_config: [
    username: "admin",
    password: "simple_password"
  ]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
