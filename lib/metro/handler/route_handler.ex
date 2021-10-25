defmodule Metro.RouteHandler do
  @moduledoc """
  RouteHandler is in charge of obtaining the possible routes to travel between stations
  """
  alias Metro.LineHandler

  @spec find_route(binary, binary) ::
          {:error, %{message: binary}} | {:ok, %{instructions: [map], lines: [map]}}
  def find_route(origin, destination) do
    path = Path.join("./", "metro.kml")
    file = File.read(path)
      |> case do
        {:error, _any} -> Metro.File.get_file
        {:ok, file} -> file
      end
    kml = XmlToMap.naive_map(file)
      |> Map.get("kml")
      |> Map.get("Document")
      |> Map.get("Folder")
    stations = kml
      |> LineHandler.build_stations()
    origin = LineHandler.clean_string(origin)
    destination = LineHandler.clean_string(destination)
    validate_station(kml, stations, origin, destination)
  end

  defp validate_station(kml, stations, origin, destination) do
    valid_origin = validate_station(stations, origin)
    valid_destination = validate_station(stations, destination)
    if valid_origin && valid_destination do
      data = kml
        |> LineHandler.build_lines(stations)
        |> find_route(origin, destination)
      {:ok, data}
    else
      {:error, %{message: get_error_message(valid_origin, valid_destination)}}
    end
  end

  defp validate_station(stations, name) do
    stations
      |> Enum.any?(fn s -> s.name_clean == name end)
  end

  defp get_error_message(valid_origin, valid_destination) do
    if !valid_origin && !valid_destination do
      "No encontré ni la estación origen ni la destino 😰"
    else
      "No encontré la estación #{if valid_origin, do: "destino", else: "origen"}"
    end
  end

  defp find_route(lines, origin, destination) do
    line_origin = get_line_by_name_station(lines, origin)
    station_origin = line_origin.stations
      |> Enum.find(fn l -> l.name_clean == origin end)
    line_destination = get_line_by_name_station(lines, destination, line_origin.id)
    station_destination = line_destination.stations
      |> Enum.find(fn l -> l.name_clean == destination end)
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

  defp find_route_transfer(line_origin, line_destination, station_origin, station_destination, lines) do
    line_origin.transfers
    |> Enum.find(fn t -> t == line_destination.id end)
    |> case do
      nil -> find_route_transfer_options(line_origin, line_destination, station_origin, station_destination, lines)
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
      |> Enum.find(fn e -> e.name_clean == station_transfer.name_clean end)
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
    |> Enum.find(fn l -> l.stations |> Enum.any?(fn e -> e.name_clean == origin end) end)
  end

  defp get_line_by_name_station(lines, origin, line_id) do
    lines
    |> Enum.find(fn l -> l.stations |> Enum.any?(fn e -> e.name_clean == origin end) && l.id == line_id end)
    |> case do
      nil -> get_line_by_name_station(lines, origin)
      val -> val
    end
  end

  defp find_route_transfer_options(line_origin, line_destination, station_origin, station_destination, lines) do
    iteration_childs(lines, line_destination.id, line_origin.id, line_origin.transfers, [], 1)
      |> build_options(line_origin, line_destination, station_origin, station_destination, [], lines)
  end

  defp iteration_childs(lines, line_destination_id, line_origin_id, transfers, acarreo, nivel) do
    childs = transfers
      |> get_lines_childs(lines, [])
    filtrado = childs
      |> Enum.filter(fn t -> t.transfers |> Enum.any?(fn tt -> tt == line_destination_id end) end)
    nuevo_nivel = Map.new
      |> Map.put(:nivel, nivel)
      |> Map.put(:transfers, transfers)
      |> Map.put(:line_origin_id, line_origin_id)
    acarreo = acarreo ++ [nuevo_nivel]
    if filtrado |> length == 0 && nivel < 10 do
      childs
        |> Enum.map(fn h -> iteration_childs(lines, line_destination_id, h.transfer_id, h.transfers, acarreo, nivel + 1) end)
    else
      filtro = filtrado
          |> List.first
      nuevo_nivel = Map.new
        |> Map.put(:nivel, nivel + 1)
        |> Map.put(:transfers, filtro.transfers)
        |> Map.put(:line_origin_id, filtro.transfer_id)
      acarreo ++ [nuevo_nivel]
    end
  end

  defp get_lines_childs([transfer | other], lines, arr) do
    transfers_line = lines
      |> Enum.find(fn l -> l.id == transfer end)
      |> Map.get(:transfers)
    new_transfer = Map.new
      |> Map.put(:transfer_id, transfer)
      |> Map.put(:transfers, transfers_line)
    get_lines_childs(other, lines, arr ++ [new_transfer])
  end

  defp get_lines_childs([], _lines, arr), do: arr

  defp build_options([option | other], line_origin, line_destination, station_origin, station_destination, options, lines) do
    option = option
      |> build_options_individual(option, line_destination.id, [], lines, station_origin, station_destination)
      |> Enum.map(fn o -> o.instructions end)
      |> List.flatten
    options = options ++ [option]
    build_options(other, line_origin, line_destination, station_origin, station_destination, options, lines)
  end

  defp build_options([], _line_origin, _line_destination, _station_origin, _station_destination, options, _lines) do
    options
      |> build_options([], 1)
  end

  defp build_options([option | other], options, id) do
    option = Map.new
      |> Map.put(:option, id)
      |> Map.put(:instructions, option)
    options = options ++ [option]
    build_options(other, options, id + 1)
  end

  defp build_options([], options, _id), do: options

  defp build_options_individual([transfer | other], option, line_destination_id, arr, lines, station_origin, station_destination) do
    line_origin = lines
      |> Enum.find(fn l -> l.id == transfer.line_origin_id end)
    option
      |> Enum.find(fn o -> o.nivel == (transfer.nivel + 1) end)
      |> case do
        nil -> make_last_transfer(lines, line_origin, line_destination_id, station_origin, station_destination, arr)
        next_transfer ->
          data = make_transfer(lines, next_transfer, option, transfer, line_origin, line_destination_id, station_origin)
          new_arr = if arr |> length == 0 do
            data.new_arr
          else
            data.new_arr
              |> Map.put(:instructions, data.new_arr.instructions |> List.delete_at(0))
          end
          arr = arr ++ [new_arr]
          build_options_individual(other, option, line_destination_id, arr, lines, data.station_destination, station_destination)
      end
  end

  defp make_last_transfer(lines, line_origin, line_destination_id, station_origin, station_destination, arr) do
    line_destination = lines
      |> Enum.find(fn l -> l.id == line_destination_id end)
    new_arr = make_path(line_origin, line_destination, station_origin, station_destination)
      |> List.first
    new_arr = new_arr
      |> Map.put(:instructions, new_arr.instructions |> List.delete_at(0))
    arr ++ [new_arr]
  end

  defp make_transfer(lines, next_transfer, option, transfer, line_origin, line_destination_id, station_origin) do
    line_destination = lines
      |> Enum.find(fn l -> l.id == next_transfer.line_origin_id end)
    station_destination_aux = option
      |> Enum.find(fn o -> o.nivel == (transfer.nivel + 2) end)
      |> case do
        nil -> line_destination.stations
          |> get_station_destination(line_destination_id)
        val -> line_destination.stations
          |> get_station_destination(val.line_origin_id)
      end
    new_arr = make_path(line_origin, line_destination, station_origin, station_destination_aux)
      |> List.first
    %{station_destination: station_destination_aux, new_arr: new_arr}
  end

  defp get_station_destination(stations, line_destination_id) do
    stations
      |> Enum.find(fn e -> e.transfers |> Enum.any?(fn t -> t == line_destination_id end) end)
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
