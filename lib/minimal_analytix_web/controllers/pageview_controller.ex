defmodule MinimalAnalytixWeb.PageviewController do
  use MinimalAnalytixWeb, :controller

  def index(conn, _params) do
    conn
    |> put_status(:ok)
    |> html("ok")
  end

  def create(conn, _params) do
    conn
    |> put_status(:created)
    |> json("ok")
  end
end
