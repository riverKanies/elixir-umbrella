defmodule ExampleWeb.PageController do
  use ExampleWeb.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
