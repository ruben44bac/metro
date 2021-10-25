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
        |> pretty_instruction([], 1)
    else
      find_route_transfer(line_origin, line_destination, station_origin, station_destination, lines)
    end
    %{instructions: instructions, lines: lines}
  end

  defp pretty_instruction([instruction | other], arr, option) do
    instruction = instruction
      |> Enum.map(fn i -> i |> Map.put(:texto, "Sube en la estación #{i.origin.name} dirección #{i.direction.name}, viaja #{if i.distance == 1, do: "una estación", else: "#{i.distance} estaciones"} y baja en la estación #{i.destination.name}") end)
      |> put_instruction_transfer([])
      |> Enum.map(fn i -> i.texto end)
    option_completa = Map.new
      |> Map.put(:option, option)
      |> Map.put(:instructions, instruction)
    pretty_instruction(other, arr ++ [option_completa], option + 1)
  end

  defp pretty_instruction([], arr, _option), do: arr

  defp put_instruction_transfer([instruction | other], arr) do
    arr_instruction = if instruction.transfer do
      new_instruction = Map.new
        |> Map.put(:texto, "Transborda hacia la #{instruction.destination.line_name}")
      [new_instruction, instruction]
    else
      [instruction]
    end
    put_instruction_transfer(other, arr ++ arr_instruction)
  end

  defp put_instruction_transfer([], arr), do: arr

  defp find_route_transfer(line_origin, line_destination, station_origin, station_destination, _lines) do
    line_origin.transfers
    |> Enum.find(fn t -> t == line_destination.id end)
    |> case do
      nil -> []
      _val -> make_path(line_origin, line_destination, station_origin, station_destination)
    end
  end

  defp make_path(line_origin, line_destination, station_origin, station_destination) do
    line_origin.stations
      |> Enum.filter(fn e -> e.transfers |> Enum.any?(fn t -> t == line_destination.id end) end)
      |> Enum.map(fn e ->  e |> build_option(line_origin, line_destination, station_origin, station_destination, []) end)
      |> pretty_instruction([], 1)
  end

  defp build_option(station_transfer, line_origin, line_destination, station_origin, station_destination, instructions) do
    direction = get_direction(station_origin, station_transfer, line_origin)
    instruction_1 = Map.new
      |> Map.put(:direction, direction)
      |> Map.put(:origin, station_origin)
      |> Map.put(:distance, Kernel.abs(station_origin.id - station_transfer.id))
      |> Map.put(:transfer, false)
      |> Map.put(:destination, station_transfer)
    station_transfer_aux = line_destination.stations
      |> Enum.find(fn e -> e.name == station_transfer.name end)
    direction = get_direction(station_transfer_aux, station_destination, line_destination)
    instruction_2 = Map.new
      |> Map.put(:direction, direction)
      |> Map.put(:origin, station_transfer_aux)
      |> Map.put(:distance, Kernel.abs(station_transfer_aux.id - station_destination.id))
      |> Map.put(:transfer, true)
      |> Map.put(:destination, station_destination)
    instructions ++ [instruction_1, instruction_2]
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
