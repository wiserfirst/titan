defmodule Titan.Schema.Request do
  use Ecto.Schema
  import Ecto.Changeset, only: [cast: 3]

  @derive {Jason.Encoder, only: [:id, :body, :inserted_at, :updated_at]}
  schema "requests" do
    field :body, :string
    timestamps(type: :utc_datetime)
  end

  @fields [
    :body
  ]

  def changeset(struct, params \\ :empty) do
    struct
    |> cast(params, @fields)
  end
end
