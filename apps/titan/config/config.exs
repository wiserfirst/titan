# Since configuration is shared in umbrella projects, this file
# should only configure the :titan application itself
# and only for organization purposes. All other config goes to
# the umbrella root.
use Mix.Config

config :titan,
  ecto_repos: [Titan.Repo]

import_config "#{Mix.env()}.exs"
