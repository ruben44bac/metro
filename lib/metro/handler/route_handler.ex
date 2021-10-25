defmodule Metro.RouteHandler do
  alias Metro.LineHandler

  def find_route(origin, destination) do
    {:ok, file} = File.read("/Users/santiagodesarrollo1/Documents/metro.kml")
    kml = XmlToMap.naive_map(file)
      |> Map.get("kml")
      |> Map.get("Document")
      |> Map.get("Folder")
    stations = kml
      |> LineHandler.build_stations()
    kml
      |> LineHandler.build_lines(stations)
      |> find_route(origin, destination)
  end

  defp find_route(lines, origin, destination) do
    line_origin = get_line_by_name_station(lines, origin)
    station_origin = line_origin.stations
      |> Enum.find(fn l -> l.name == origin end)
    line_destination = get_line_by_name_station(lines, destination, line_origin.id)
    station_destination = line_destination.stations
      |> Enum.find(fn l -> l.name == destination end)
    instructions = if line_origin.id == line_destination.id do
      direction = get_direction(station_origin, station_destination, line_origin)
      instruction = Map.new
        |> Map.put(:direction, direction)
        |> Map.put(:origin, station_origin)
        |> Map.put(:destination, station_destination)
        |> Map.put(:distance, Kernel.abs(station_origin.id - station_destination.id))
        |> Map.put(:transfer, false)
      [[instruction]]
    else
      []
    end
    %{instructions: instructions, lines: lines}
  end

  defp get_line_by_name_station(lines, origin) do
    lines
    |> Enum.find(fn l -> l.stations |> Enum.any?(fn e -> e.name == origin end) end)
  end

  defp get_line_by_name_station(lines, origin, line_id) do
    lines
    |> Enum.find(fn l -> l.stations |> Enum.any?(fn e -> e.name == origin end) && l.id == line_id end)
    |> case do
      nil -> get_line_by_name_station(lines, origin)
      val -> val
    end
  end

  defp get_direction(station_origin, station_destination, line) do
    if station_origin.id > station_destination.id do
      line.stations
        |> List.first
    else
      line.stations
        |> List.last
    end
  end

end
