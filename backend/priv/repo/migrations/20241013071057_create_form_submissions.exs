defmodule Backend.Repo.Migrations.CreateFormSubmissions do
  use Ecto.Migration

  def change do
    create table(:form_submissions) do
      add :form_type, :string
      add :data, :map

      timestamps(type: :utc_datetime)
    end
  end
end
