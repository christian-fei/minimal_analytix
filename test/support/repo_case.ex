defmodule MinimalAnalytix.RepoCase do
  use ExUnit.CaseTemplate

  using do
    quote do
      alias MinimalAnalytix.Repo

      import Ecto
      import Ecto.Query
      import MinimalAnalytix.RepoCase

      # and any other stuff
    end
  end

  setup tags do
    :ok = Ecto.Adapters.SQL.Sandbox.checkout(MinimalAnalytix.Repo)

    unless tags[:async] do
      Ecto.Adapters.SQL.Sandbox.mode(MinimalAnalytix.Repo, {:shared, self()})
    end

    :ok
  end
end
