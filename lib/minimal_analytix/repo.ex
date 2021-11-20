defmodule MinimalAnalytix.Repo do
  use Ecto.Repo,
    otp_app: :minimal_analytix,
    adapter: Ecto.Adapters.Postgres
end
