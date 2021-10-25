defmodule Metro.LineHandlerTest do
  use ExUnit.Case
  doctest Metro.LineHandler

  @kml [
    %{"Placemark" => [
      %{
        "LineString" => %{"coordinates" => "-99.0056777,19.3647171,0" },
        "name" => "Línea A"
      }
    ]},
    %{"Placemark" => [
      %{
        "name" => "Acatitla",
        "description" => "Línea A. Santa Martha Acatitla, Iztapalapa, Ciudad de México, DF, México",
        "Point" => %{
          "coordinates" => "-99.0056777,19.3647171,0"
        }
      }
    ]}
  ]

  @stations [
    %{
      name: "Acatitla",
      name_clean: "acatitla",
      description: "Línea A. Santa Martha Acatitla, Iztapalapa, Ciudad de México, DF, México",
      lat: "-99.0056777",
      lng: "19.3647171"
    }
  ]

  @stations_full [
    %{
      name: "Acatitla",
      name_clean: "acatitla",
      description: "Línea A. Santa Martha Acatitla, Iztapalapa, Ciudad de México, DF, México",
      lat: "-99.0056777",
      lng: "19.3647171",
      id: 1, line_id: 1,
      line_name: "Línea A",
      transfers: []
    }
  ]

  test "build stations" do
    assert Metro.LineHandler.build_stations(@kml) == @stations
  end

  test "build lines" do
    resp = [%{
      id: 1,
      name: "Línea A",
      stations: @stations_full,
      transfers: []
      }
    ]
    assert Metro.LineHandler.build_lines(@kml, @stations) == resp
  end

  test "clean string" do
    assert Metro.LineHandler.clean_string("Rubén") == "ruben"
  end

end
