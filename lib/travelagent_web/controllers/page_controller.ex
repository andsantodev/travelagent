defmodule TravelagentWeb.PageController do
  use TravelagentWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
