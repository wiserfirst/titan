defmodule Titan.ErrorUtils do
  def changeset_to_errormsg(%Ecto.Changeset{action: action, errors: errors}) do
    message =
      errors
      |> Enum.map(fn {key, {msg, _}} ->
        "#{key}: #{msg}"
      end)
      |> Enum.join("; ")

    "For #{action}: #{message}"
  end

  def changeset_to_errormsg(changeset), do: inspect(changeset)
end
