defmodule MinimalAnalytixWeb.PageviewController do
  use MinimalAnalytixWeb, :controller
  alias MinimalAnalytix.Analytics.Pageview

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> html("ok")
  end

  def create(conn, post_params) do
    changeset =
      Pageview.create_pageview(%{
        domain: post_params["domain"],
        path: post_params["path"],
        visitor: post_params["visitor"]
      })

    case changeset.valid? do
      true ->
        updated = MinimalAnalytix.Repo.insert!(changeset)

        conn
        |> put_status(:created)
        |> json(updated)

      false ->
        conn
        |> put_status(422)
        |> json("failed")
    end
  end
end
