defmodule MetroWeb.PageLive do
  @moduledoc """
  Principal LiveView
  """
  use MetroWeb, :live_view

  @spec mount(any, any, any) :: {:ok, any}
  def mount(_params, _session, socket) do
    {:ok, socket}
  end


end
