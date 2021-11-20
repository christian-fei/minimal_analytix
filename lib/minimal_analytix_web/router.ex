defmodule MinimalAnalytixWeb.Router do
  use MinimalAnalytixWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_live_flash
    plug :put_root_layout, {MinimalAnalytixWeb.LayoutView, :root}
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", MinimalAnalytixWeb do
    pipe_through :browser

    post "/", PageviewController, :create
  end

  # Other scopes may use custom stacks.
  # scope "/api", MinimalAnalytixWeb do
  #   pipe_through :api
  # end
end
