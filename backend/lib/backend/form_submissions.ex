defmodule Backend.FormSubmissions do
  @moduledoc """
  The FormSubmissions context.
  """

  import Ecto.Query, warn: false
  alias Backend.Repo

  alias Backend.FormSubmission

  @doc """
  Creates a form_submission.

  ## Examples

      iex> create_form_submission(%{field: value})
      {:ok, %FormSubmission{}}

      iex> create_form_submission(%{field: bad_value})
      {:error, %Ecto.Changeset{}}

  """
  def create_form_submission(attrs \\ %{}) do
    %FormSubmission{}
    |> FormSubmission.changeset(attrs)
    |> Repo.insert()
  end
end
