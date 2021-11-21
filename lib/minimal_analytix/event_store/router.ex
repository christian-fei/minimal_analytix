defmodule MinimalAnalytix.EventStore.Router do
  @moduledoc false

  use Commanded.Commands.Router
  alias MinimalAnalytix.EventStore.Pageview.Commands.TrackPageview
  alias MinimalAnalytix.EventStore.Pageview.Aggregates.Pageview

  dispatch([TrackPageview],
    to: Pageview,
    identity: :id
  )
end
