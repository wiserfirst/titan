defmodule TitanWeb.VmsController do
  use TitanWeb, :controller

  def create(conn, params) do
    json(conn, %{params: params})
  end
end
