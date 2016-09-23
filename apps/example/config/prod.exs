use Mix.Config

config :example, Example.Repo,
  adapter:   Ecto.Adapters.Postgres,
  url:       System.get_env("DATABASE_URL"),
  pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
  ssl:       true

config :logger,
  backends: [:console, Rollbax.Logger]

config :logger, Rollbax.Logger,
  level:  :error,
  format: "$time $metadata[$level] $message\n"

config :rollbax,
  enabled: true
