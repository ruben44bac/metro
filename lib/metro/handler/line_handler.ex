defmodule Metro.LineHandler do

  def build_stations(kml) do
    kml
      |> Enum.at(1)
      |> Map.get("Placemark")
      |> Enum.map(fn e -> Map.new
        |> Map.put(:name, e["name"])
        |> Map.put(:description, e["description"])
        |> Map.merge(build_station(e["Point"]["coordinates"]))
      end)
  end

  def build_lines(kml, stations) do
    kml
      |> Enum.at(0)
      |> Map.get("Placemark")
      |> build_line([], stations, 1)
  end

  defp build_station(station) do
    aux = station |> String.split(",")
    %{lat: aux |> Enum.at(0), lng: aux |> Enum.at(1)}
  end

  defp build_line([line | other], arr, stations, id) do
    stations_line = line
      |> Map.get("LineString")
      |> Map.get("coordinates")
      |> String.split("\n            ")
      |> Enum.map(fn c -> c |> build_station end)
      |> get_stations(stations, [], 1, id, line["name"])
    line = Map.new
      |> Map.put(:id, id)
      |> Map.put(:name, line["name"])
      |> Map.put(:stations, stations_line)
    build_line(other, arr ++ [line], stations, id + 1)
  end

  defp build_line([], arr, _stations, _id), do: arr

  defp get_stations([station | other], stations, arr, id, line_id, line_name) do
    stations
      |> Enum.find(fn e -> e.lat == station.lat && e.lng == station.lng end)
      |> case do
        nil -> get_stations(other, stations, arr, id, line_id, line_name)
        station_full -> get_stations(other, stations, arr ++ [build_station_full(station_full, id, line_id, line_name)], id + 1, line_id, line_name)
      end
  end

  defp get_stations([], _stations, arr, _id, _line_id, _line_name), do: arr

  defp build_station_full(station_full, id, line_id, line_name) do
    station_full
      |> Map.put(:id, id)
      |> Map.put(:line_id, line_id)
      |> Map.put(:line_name, line_name)
  end

end