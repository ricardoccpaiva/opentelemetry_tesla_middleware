# OpenTelemetryTesla

[![Build Status](https://github.com/ricardoccpaiva/opentelemetry_tesla_middleware/actions/workflows/elixir.yml/badge.svg)](https://github.com/ricardoccpaiva/opentelemetry_tesla_middleware/actions)

Tesla middleware that creates OpenTelemetry spans from Tesla HTTP client events.

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `opentelemetry_tesla` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:opentelemetry_tesla, "~> 0.1.0-rc.1"}
  ]
end
```

## Setup
Add `Tesla.Middleware.OpentelemetryTeslaMiddleware` to the list of your Tesla middlewares.

After this, spans will start to be created whenever a request is completed or if it eventually fails with some error.
