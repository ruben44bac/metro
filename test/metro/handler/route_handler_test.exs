defmodule Metro.RouteHandlerTest do
  use ExUnit.Case
  doctest Metro.RouteHandler

  test "find route" do
    instructions = [
        %{
          instructions: [
            "Sube en la estación Pantitlán dirección Pantitlán, viaja 0 estaciones y baja en la estación Pantitlán",
            "Transborda hacia la Línea A",
            "Sube en la estación Pantitlán dirección La Paz, viaja 8 estaciones y baja en la estación Los Reyes"
          ],
          option: 1
        }
      ]
    resp = Metro.RouteHandler.find_route("Pantitlan", "Los Reyes")
      |> case do
        {:error, _error} -> []
        {:ok, data} -> data
          |> Map.get(:instructions)
      end
    assert resp == instructions
  end

end
