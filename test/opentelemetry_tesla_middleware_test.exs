defmodule OpentelemetryTeslaMiddlewareTest do
  use ExUnit.Case

  test "Injects distributed tracing headers" do
    OpentelemetryTelemetry.start_telemetry_span(
      "tracer_id",
      "my_label",
      %{},
      %{kind: :client}
    )

    assert %Tesla.Env{
             headers: [
               {"traceparent", traceparent}
             ]
           } =
             Tesla.Middleware.OpentelemetryTeslaMiddleware.call(
               %Tesla.Env{url: ""},
               [],
               "http://example.com"
             )

    assert is_binary(traceparent)
  end
end
