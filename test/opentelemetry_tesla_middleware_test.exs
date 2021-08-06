defmodule OpentelemetryTeslaMiddlewareTest do
  use ExUnit.Case
  doctest OpentelemetryTeslaMiddleware

  test "greets the world" do
    assert OpentelemetryTeslaMiddleware.hello() == :world
  end
end
