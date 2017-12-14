# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :regex_routing,
  ecto_repos: [RegexRouting.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :regex_routing, RegexRoutingWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "aKO35Vklj8yUNj7khDv6RLgjnhaNcUCeQEGo9jWuHlh4lAzrZkIrqc7MQtGkrhKM",
  render_errors: [view: RegexRoutingWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RegexRouting.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
