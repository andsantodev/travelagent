defmodule TravelagentWeb.SearchLive do
  use TravelagentWeb, :live_view
  alias Travelagent.Airports

  def mount(_params, _session, socket) do
    socket =
      socket
      |> assign(:airport_code, "")
      |> assign(:airports, [])

    {:ok, socket}
  end

  def handle_event(
        "airport_code_search",
        %{"airport_code" => airport_code},
        socket
      ) do
    airport_code = String.upcase(airport_code)

    socket =
      socket
      |> assign(:airport_code, airport_code)
      |> assign(:airports, Airports.search_by_code(airport_code))

    {:noreply, socket}
  end
end
