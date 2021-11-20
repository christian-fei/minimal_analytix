defmodule MinimalAnalytix.Repo.Migrations.AddOccurredAtToPageview do
  use Ecto.Migration

  def change do
    alter table(:pageviews) do
      add :occurred_at, :utc_datetime
    end
  end
end
