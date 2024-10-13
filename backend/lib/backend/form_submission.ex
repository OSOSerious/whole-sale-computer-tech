defmodule Backend.FormSubmission do
  use Ecto.Schema
  import Ecto.Changeset

  schema "form_submissions" do
    field :data, :map
    field :form_type, :string

    timestamps(type: :utc_datetime)
  end

  @doc false
  def changeset(form_submission, attrs) do
    form_submission
    |> cast(attrs, [:form_type, :data])
    |> validate_required([:form_type])
  end
end
