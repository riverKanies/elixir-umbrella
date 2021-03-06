defmodule ExampleWeb.Mixfile do
  use Mix.Project

  def project do
    [app: :example_web,
     version: "0.0.1",
     build_path: "../../_build",
     config_path: "../../config/config.exs",
     deps_path: "../../deps",
     lockfile: "../../mix.lock",
     elixir: "~> 1.0",
     elixirc_paths: elixirc_paths(Mix.env),
     compilers: [:phoenix|Mix.compilers],
     build_embedded: Mix.env === :prod,
     start_permanent: Mix.env === :prod,
     deps: deps]
  end

  # Configuration for the OTP application.
  #
  # Type `mix help compile.app` for more information.
  def application do
    [mod: {ExampleWeb, []},
     applications: [:example, :phoenix, :cowboy, :logger]]
  end

  # Specifies which paths to compile per environment.
  defp elixirc_paths(:test), do: ["lib", "web", "test/support"]
  defp elixirc_paths(_),     do: ["lib", "web"]

  # Specifies your project dependencies.
  #
  # Type `mix help deps` for examples and options.
  defp deps do
    [
      {:cowboy, "~> 1.0"},
      {:example, in_umbrella: true},
      {:phoenix, "~> 1.1.4"},
      {:phoenix_live_reload, "~> 1.0", only: :dev},
    ]
  end
end
