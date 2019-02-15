defmodule Titan.Repo.Migrations.AddRequestsTable do
  use Ecto.Migration

  def change do
    create table(:requests) do
      add :body, :text

      timestamps()
    end
  end
end
