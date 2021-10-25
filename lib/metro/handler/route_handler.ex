defmodule Metro.RouteHandler do
  alias Metro.LineHandler

  def find_route(_origin, _destination) do
    {:ok, file} = File.read("/Users/santiagodesarrollo1/Documents/metro.kml")
    kml = XmlToMap.naive_map(file)
      |> Map.get("kml")
      |> Map.get("Document")
      |> Map.get("Folder")
    stations = kml
      |> LineHandler.build_stations()
    kml
      |> LineHandler.build_lines(stations)
  end

end
