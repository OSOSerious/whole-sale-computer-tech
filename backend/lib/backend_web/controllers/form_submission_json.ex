defmodule BackendWeb.FormSubmissionJSON do
  alias Backend.FormSubmission

  @doc """
  Renders a single form_submission.
  """
  def show(%{form_submission: form_submission}) do
    %{data: data(form_submission)}
  end

  defp data(%FormSubmission{} = form_submission) do
    %{
      id: form_submission.id,
      form_type: form_submission.form_type,
      data: form_submission.data
    }
  end

  @doc """
  Renders changeset errors.
  """
  def error(%{changeset: changeset}) do
    # When encoded, the changeset returns its errors
    # as a JSON object. So we just pass it forward.
    %{errors: Ecto.Changeset.traverse_errors(changeset, &translate_error/1)}
  end

  defp translate_error({msg, opts}) do
    # You can make use of gettext to translate error messages by
    # uncommenting and adjusting the following code:

    # if count = opts[:count] do
    #   Gettext.dngettext(BackendWeb.Gettext, "errors", msg, msg, count, opts)
    # else
    #   Gettext.dgettext(BackendWeb.Gettext, "errors", msg, opts)
    # end

    Enum.reduce(opts, msg, fn {key, value}, acc ->
      String.replace(acc, "%{#{key}}", fn _ -> to_string(value) end)
    end)
  end
end
