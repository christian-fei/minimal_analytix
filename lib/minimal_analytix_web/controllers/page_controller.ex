defmodule MinimalAnalytixWeb.PageController do
  use MinimalAnalytixWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
