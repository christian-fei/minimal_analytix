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

  @doc """
  creates a changeset for MinimalAnalytix.Analytics.Pageview
  """
  def create_pageview(%{domain: domain, path: path, visitor: visitor}) do
    %MinimalAnalytix.Analytics.Pageview{}
    |> changeset(%{
      path: path,
      domain: domain,
      visitor: visitor
    })
  end
end
