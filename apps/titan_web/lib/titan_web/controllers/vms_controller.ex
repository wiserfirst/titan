defmodule TitanWeb.VmsController do
  use TitanWeb, :controller
  alias Titan.{ErrorUtils, Request}

  def create(conn, params = %{"name" => vms_name}) do
    result =
      with {:ok, input} = Jason.encode(Map.delete(params, "name")),
           attrs = %{body: input},
           {:ok, request} <- Request.create(attrs) do
        request
      else
        {:error, %Ecto.Changeset{} = changeset} ->
          %{error_msg: "Failed to save request: " <> ErrorUtils.changeset_to_errormsg(changeset)}
      end

    json(conn, %{vms_name: vms_name, result: result})
  end
end
