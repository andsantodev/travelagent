defmodule Travelagent.Airports do
  def search_by_code(""), do: []

  def search_by_code(code) do
    list_airports()
    |> Enum.filter(&String.starts_with?(&1.code, code))
  end

  def list_airports do
    [
      %{name: "Berlin Brandenburg", code: "BER"},
      %{name: "Berlin Schönefeld", code: "SXF"},
      %{name: "Berlin Tegel", code: "TXL"},
      %{name: "Bremen", code: "BRE"},
      %{name: "Köln/Bonn", code: "CGN"},
      %{name: "Dortmund", code: "DTM"},
      %{name: "Dresden", code: "DRS"},
      %{name: "Düsseldorf", code: "DUS"},
      %{name: "Frankfurt", code: "FRA"},
      %{name: "Frankfurt-Hahn", code: "HHN"},
      %{name: "Hamburg", code: "HAM"},
      %{name: "Hannover", code: "HAJ"},
      %{name: "Leipzig Halle", code: "LEJ"},
      %{name: "München", code: "MUC"},
      %{name: "Münster Osnabrück", code: "FMO"},
      %{name: "Nürnberg", code: "NUE"},
      %{name: "Paderborn Lippstadt", code: "PAD"},
      %{name: "Stuttgart", code: "STR"}
    ]
  end
end
