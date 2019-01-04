defmodule BibleWithFriendsWeb.Router do
  use BibleWithFriendsWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", BibleWithFriendsWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/volumes", VolumeController, :index
    resources "/volumes", VolumeController
  end

  # Other scopes may use custom stacks.
  # scope "/api", BibleWithFriendsWeb do
  #   pipe_through :api
  # end
end
