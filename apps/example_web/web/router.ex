defmodule ExampleWeb.Router do
  use ExampleWeb.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ExampleWeb do
    pipe_through :api
  end
end
