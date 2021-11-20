defmodule MinimalAnalytixWeb.PageviewController do
  use MinimalAnalytixWeb, :controller

  def create(conn, _params) do
    conn
    |> put_status(:created)
    |> json("ok")
  end
end
