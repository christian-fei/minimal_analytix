defmodule MinimalAnalytix.Analytics.Pageview do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pageviews" do
    field :domain, :string
    field :path, :string
    field :visitor, :string

    timestamps()
  end

  @doc false
  def changeset(pageview, attrs) do
    pageview
    |> cast(attrs, [:path, :domain, :visitor])
    |> validate_required([:path, :domain, :visitor])
  end
end
