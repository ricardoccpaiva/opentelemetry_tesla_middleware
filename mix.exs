defmodule OpentelemetryTeslaMiddleware.MixProject do
  use Mix.Project

  def project do
    [
      app: :opentelemetry_tesla_middleware,
      version: "0.1.0",
      elixir: "~> 1.12",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger]
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:opentelemetry, "~> 1.0.0-rc.2", only: :test},
      {:opentelemetry_api, "~> 1.0.0-rc.2"},
      {:opentelemetry_telemetry, "~> 1.0.0-beta.2"},
      {:tesla, "~> 1.4"}
    ]
  end
end
