defmodule ConduitWeb.PullDataLive do
  use ConduitWeb, :live_view
  alias Conduit.Quickbooks.Endpoints

  def render(assigns) do
    ~H"""
    <p>Manage Ecto Page</p>
    <p>Endpoint type: {@endpoint_type}</p>
    <.form for={%{}} phx-submit="endpoint_selected">
      <.input type="select" name="endpoint_friendly_name" value="" options={@endpoint_friendly_names} />
      <.button>Select</.button>
    </.form>
    <div :if={@selected_friendly_name}>
      <p>selected {@selected_friendly_name}</p>
    </div>
    <div :if={@object_names}>
      <div class="flex flex-col gap-4">
        <div :for={name <- @object_names}>
          <div class="flex flex-row gap-2">
            <p>{name}</p>
            <.button phx-click="pull_page_clicked" phx-value-object-name={name}>
              pull page
            </.button>
          </div>
        </div>
      </div>
    </div>
    """
  end

  def handle_event("pull_page_clicked", %{"object-name" => object_name}, socket) do
    ep = Endpoints.by_friendly_name(socket.assigns.selected_friendly_name)

    socket =
      case Endpoints.fetch_page(ep, object_name) do
        {:ok, _} ->
          put_flash(socket, :info, "Successful pull for object #{object_name}")

        {:error, _} ->
          put_flash(socket, :error, "Failed to pull for object #{object_name}, check the logs")
      end

    {:noreply, socket}
  end

  def handle_event("endpoint_selected", %{"endpoint_friendly_name" => selected_fname}, socket) do
    {:noreply,
     socket
     |> push_patch(
       to:
         "/pull?endpoint_type=#{socket.assigns.endpoint_type}&endpoint_friendly_name=#{selected_fname}"
     )}
  end

  def mount(_params, _session, socket) do
    {:ok, socket}
  end

  def handle_params(unsigned_params, _uri, socket) do
    endpoint_type = Map.get(unsigned_params, "endpoint_type", "quickbooks")

    endpoint_friendly_names =
      for %{friendly_name: fname} <- fetch_endpoint_records(endpoint_type), do: fname

    selected_fname = Map.get(unsigned_params, "endpoint_friendly_name")

    object_names =
      case {selected_fname, socket.assigns[:object_names]} do
        {nil, _} ->
          nil

        {fname, nil} ->
          for %{name: name} <- Endpoints.by_friendly_name(selected_fname).objects, do: name

        {_, object_names} ->
          object_names
      end

    {:noreply,
     assign(socket,
       endpoint_type: endpoint_type,
       endpoint_friendly_names: endpoint_friendly_names,
       selected_friendly_name: selected_fname,
       object_names: object_names
     )}
  end

  defp fetch_endpoint_records("quickbooks") do
    Endpoints.list()
  end

  defp fetch_endpoint_records(_) do
    []
  end
end
