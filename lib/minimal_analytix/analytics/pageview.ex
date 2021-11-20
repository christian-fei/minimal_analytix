defmodule MinimalAnalytix.Analytics.Pageview do
  use Ecto.Schema
  import Ecto.Changeset

  schema "pageviews" do
    field :domain, :string
    field :path, :string
    field :visitor, :string
    field :occurred_at, :utc_datetime

    timestamps()
  end

  @doc false
  def changeset(pageview, attrs) do
    pageview
    |> cast(attrs, [:path, :domain, :visitor, :occurred_at])
    |> validate_required([:path, :domain, :visitor, :occurred_at])
  end

  @doc """
  creates a changeset for MinimalAnalytix.Analytics.Pageview
  """
  def create_pageview(%{domain: domain, path: path, visitor: visitor, occurred_at: occurred_at}) do
    %MinimalAnalytix.Analytics.Pageview{}
    |> changeset(%{
      path: path,
      domain: domain,
      visitor: visitor,
      occurred_at: occurred_at
    })
  end
end
