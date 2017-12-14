defmodule RegexRoutingWeb.Router do
  use RegexRoutingWeb, :router

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

  scope "/", RegexRoutingWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/:slug", SlugRouter, :show # Comment this out for usual behavior!
    get "/:slug", PageController, :show
  end

  # Other scopes may use custom stacks.
  # scope "/api", RegexRoutingWeb do
  #   pipe_through :api
  # end
end

defmodule RegexRoutingWeb.SlugRouter do
  import Plug.Conn

  def init(opts), do: opts

  def call(conn, _action) do
    conn
  end
end
