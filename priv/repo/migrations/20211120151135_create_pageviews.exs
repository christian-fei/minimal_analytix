defmodule MinimalAnalytix.Repo.Migrations.CreatePageviews do
  use Ecto.Migration

  def change do
    create table(:pageviews) do
      add :path, :string
      add :domain, :string
      add :visitor, :string

      timestamps()
    end
  end
end
