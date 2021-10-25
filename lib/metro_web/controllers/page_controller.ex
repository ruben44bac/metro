defmodule MetroWeb.PageController do
  use MetroWeb, :controller
  alias Metro.RouteHandler

  def find_route(conn, %{"origen" => origen, "destino" => destino}) do
    data = RouteHandler.find_route(origen, destino)
    render_json(data, conn, 200)
  end

  def find_route(conn, _params) do
    response = Map.new
      |> Map.put(:message, "Parámetros incorrectos")
    render_json(response, conn, 400)
  end

  def render_json(response, conn, status) do
    json(put_status(conn, status), response)
  end
end
