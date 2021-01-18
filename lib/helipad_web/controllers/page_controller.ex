defmodule HelipadWeb.PageController do
  use HelipadWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
