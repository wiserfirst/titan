defmodule Titan.Request do
  alias Titan.{Repo, Schema.Request}

  def create(attrs = %{}) do
    %Request{}
    |> Request.changeset(attrs)
    |> Repo.insert()
  end
end
