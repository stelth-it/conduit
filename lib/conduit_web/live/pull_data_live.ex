defmodule ConduitWeb.PullDataLive do
  use ConduitWeb, :live_view
  alias Conduit.Quickbooks.Endpoints
  require Logger

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
      <.button phx-click="import_all">Import All</.button>
      <div class="flex flex-col gap-4">
        <div :for={name <- @object_names}>
          <div class="flex flex-row gap-2">
            <p>{name}</p>
            <.button phx-click="pull_page_clicked" phx-value-object-name={name}>
              pull page
            </.button>
            <.button phx-click="drop_records_clicked" phx-value-object-name={name}>
              drop records
            </.button>
          </div>
        </div>
      </div>
    </div>
    <div :if={@import_statuses && @import_statuses.ok?}>
      <.table
        id="import_statuses"
        rows={
          @import_statuses.result
          |> Enum.sort(fn
            %{status: "failed"}, %{status: "success"} -> true
            _, _ -> false
          end)
        }
      >
        <:col :let={status} label="object_name">{status.object_name}</:col>
        <:col :let={status} label="status">
          <span :if={status.status == "success"} class="text-green-500">success</span>
          <span :if={status.status == "failed"} class="text-red-500">failed</span>
        </:col>
      </.table>
    </div>
    """
  end

  def handle_event("import_all", _, socket) do
    ep = Endpoints.by_friendly_name(socket.assigns.selected_friendly_name)
    object_names = socket.assigns.object_names

    {:noreply,
     assign_async(socket, [:import_statuses], fn ->
       import_statuses =
         for object_name <- object_names,
             page_status = Endpoints.fetch_page(ep, object_name) do
           case page_status do
             {:ok, _} ->
               %{object_name: object_name, status: "success"}

             {:error, _} ->
               %{object_name: object_name, status: "failed"}
           end
         end

       {:ok, %{import_statuses: import_statuses}}
     end)}
  end

  def handle_event("drop_records_clicked", %{"object-name" => object_name}, socket) do
    ep = Endpoints.by_friendly_name(socket.assigns.selected_friendly_name)

    Endpoints.drop_records(ep, object_name)

    {:noreply,
     put_flash(
       socket,
       :info,
       "Dropped all records for object #{object_name} in #{ep.friendly_name}"
     )}
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
    {:ok, assign(socket, import_statuses: nil)}
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
