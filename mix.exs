defmodule Motivation.Mixfile do
  use Mix.Project

  def project do
    [
      app: :motivation,
      version: "0.1.0",
      elixir: "~> 1.5",
      start_permanent: Mix.env == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :trot]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
       {:trot, github: "hexedpackets/trot"},
       {:poison, "~> 1.4", override: true},
    ]
  end
end
