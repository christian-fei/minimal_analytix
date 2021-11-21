defmodule MinimalAnalytix.EventStore.Pageview.Commands.TrackPageview do
  @moduledoc """
    Track pageview
  """
  @enforce_keys [:id, :domain, :path, :visitor, :occurred_at]
  defstruct [:id, :domain, :path, :visitor, :occurred_at]

  def new(map) do
    %__MODULE__{
      id: Map.get(map, :id),
      domain: Map.get(map, :domain),
      path: Map.get(map, :path),
      visitor: Map.get(map, :visitor),
      occurred_at: Map.get(map, :occurred_at)
    }
  end
end
