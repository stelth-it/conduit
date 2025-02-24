defmodule Conduit.Sage.Request.Logs.Log do
  use TypedEctoSchema
  import Ecto.Changeset
  alias Conduit.Sage.Request, as: SR
  alias Conduit.Sage.Endpoints.Endpoint

  typed_schema "request_logs" do
    field(:status, Ecto.Enum, values: [:success, :failure])
    field(:error, :map)
    embeds_one(:request, Conduit.Sage.Request)
    belongs_to(:endpoint, Conduit.Sage.Endpoints.Endpoint)
    timestamps()
  end

  def wrap_success(%Endpoint{id: id} = endpoint, %SR{} = request) when not is_nil(id) do
    log = Ecto.build_assoc(endpoint, :request_log)

    log
    |> cast(%{status: :success}, [:status])
    |> validate_required([:status, :endpoint_id])
    |> put_embed(:request, SR.redact_sensitive_fields(request))
  end

  def wrap_failure(%Endpoint{id: id} = endpoint, %SR{} = request, error) when not is_nil(id) do
    log = Ecto.build_assoc(endpoint, :request_log)
    error = prep_error_for_change(error)

    log
    |> cast(%{status: :failure, error: error}, [:status, :error])
    |> validate_required([:status, :endpoint_id])
    |> put_embed(:request, SR.redact_sensitive_fields(request))
  end

  defp prep_error_for_change(%Conduit.Sage.RequestError{} = e) do
    e
  end

  defp prep_error_for_change(e) do
    %{message: e.message}
  end
end
