defmodule MinimalAnalytix.EventStore do
  use EventStore, otp_app: :minimal_analytix

  def init(config) do
    {:ok, config}
  end
end
