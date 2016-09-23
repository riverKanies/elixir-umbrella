defmodule ExampleUmbrella.Mixfile do
  use Mix.Project

  def project do
    [
      apps_path:       "apps",
      build_embedded:  Mix.env === :prod,
      start_permanent: Mix.env === :prod,
      deps:            deps,
    ]
  end

  defp deps do
    [
      {:credo,    "~> 0.4",   only: [:dev]},
      {:dialyxir, "~> 0.3.5", only: [:dev]},
    ]
  end
end
