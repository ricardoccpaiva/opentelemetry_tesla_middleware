defmodule Tesla.Middleware.OpentelemetryTeslaMiddleware do
  @behaviour Tesla.Middleware

  def call(env, next, _options) do
    env
    |> Tesla.put_headers(:otel_propagator.text_map_inject([]))
    |> Tesla.run(next)
    |> case do
      {:ok, env} ->
        env

      {:error, error} ->
        {:error, error}
    end
  end
end
