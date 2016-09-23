use Mix.Config

config :example, Example.Repo,
  adapter:   Ecto.Adapters.Postgres,
  username:  "postgres",
  password:  "postgres",
  database:  "example_dev",
  hostname:  "localhost",
  pool_size: 10
