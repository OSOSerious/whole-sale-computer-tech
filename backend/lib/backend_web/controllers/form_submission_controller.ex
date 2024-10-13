defmodule BackendWeb.FormSubmissionController do
  use BackendWeb, :controller

  alias Backend.FormSubmissions
  alias Backend.FormSubmission

  def create(conn, %{"form_submission" => form_submission_params}) do
    case FormSubmissions.create_form_submission(form_submission_params) do
      {:ok, form_submission} ->
        conn
        |> put_status(:created)
        |> render(:show, form_submission: form_submission)

      {:error, %Ecto.Changeset{} = changeset} ->
        conn
        |> put_status(:unprocessable_entity)
        |> render(:error, changeset: changeset)
    end
  end
end
