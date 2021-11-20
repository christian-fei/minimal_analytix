defmodule Mix.Tasks.RestoreLegacyJsonData do
  @moduledoc "The hello mix task: `mix help hello`"
  use Mix.Task

  @shortdoc "Restores legacy json data"
  def run([file]) do
    Mix.Task.run("app.start")

    changesets =
      case File.read(file) do
        {:ok, body} ->
          IO.puts("ok read")

          lines =
            body
            |> String.split("\n")
            |> Enum.filter(&(&1 !== ""))
            |> Enum.map(&Jason.decode!(&1))

          lines
          |> Enum.map(
            &MinimalAnalytix.Analytics.Pageview.changeset(
              %MinimalAnalytix.Analytics.Pageview{},
              &1
            )
          )

        {:error, reason} ->
          IO.puts("error")
          IO.inspect(reason)
          []
      end

    for c <- changesets do
      MinimalAnalytix.Repo.insert(c)
    end

    IO.puts("restore legacy json data")
  end
end
