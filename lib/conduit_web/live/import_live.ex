defmodule ConduitWeb.ImportLive do
  use ConduitWeb, :live_view
  alias Conduit.Quickbooks.Object.Scraper
  alias Conduit.Quickbooks.Endpoints

  def render(assigns) do
    ~H"""
    <.form for={%{}} phx-submit="endpoint_selected">
      <.input
        type="select"
        name="endpoint_friendly_name"
        value=""
        options={Enum.map(@endpoints, & &1.friendly_name)}
      />
      <.button>
        Select
      </.button>
    </.form>
    <div :if={@endpoint_friendy_name}>
      <h2>Selected Endpoint: {@endpoint_friendy_name}</h2>
      <.button phx-click="create_schemas_and_migrations">
        Create Schemas and Migrations
      </.button>
      <h2>Enter Object Name</h2>
      <.form for={%{}} phx-submit="object_name_entered">
        <.input type="text" label="object name" name="object_name" value="" />
        <.button>
          Load
        </.button>
      </.form>
    </div>
    <h :if={@object && @object.loading}>Scraping Descripiton</h>
    <div :if={object = @object && @object.ok? && @object.result}>
      <h2>Configure Object</h2>
      <.form for={%{}} phx-submit="fields_selected">
        <.input type="text" name="json_data_key" label="json data key" value="" />
        <.input
          :for={field <- object.fields}
          type="checkbox"
          name={field.field_name}
          label={field.field_name <> " - " <> field.internal_field_name}
          checked={true}
        />
        <.button>
          Import
        </.button>
      </.form>
    </div>
    <div :if={@add_status && @add_status == :ok}>
      <p>Object Added Successfully!</p>
    </div>
    <div :if={@add_status && @add_status == :duplicate}>
      <p>Object Already Exists!</p>
      <p>If you wan to update drop the existing object and try again</p>
    </div>
    """
  end

  def mount(params, _session, socket) do
    endpoint_type = Map.get(params, "endpoint_type", "quickbooks")

    socket
    |> assign(:endpoint_type, endpoint_type)
    |> assign(:endpoints, fetch_endpoint_records(endpoint_type))
    |> assign(endpoint_friendy_name: nil, object: nil, add_status: nil)
    |> then(&{:ok, &1})
  end

  def handle_event("create_schemas_and_migrations", _unsigned_params, socket) do
    ep = Endpoints.by_friendly_name(socket.assigns.endpoint_friendy_name)
    Endpoints.create_schema_files(ep)
    Endpoints.create_migration_files(ep)

    {:noreply, socket}
  end

  def handle_event("fields_selected", params, socket) do
    object =
      update_in(socket.assigns.object.result, [Access.key(:fields)], fn fields ->
        for f <- fields, "true" == Map.get(params, f.field_name) do
          f
        end
      end)

    object = %{object | json_data_key: params["json_data_key"]}

    ep = Endpoints.by_friendly_name(socket.assigns.endpoint_friendy_name)

    add_status =
      case Endpoints.add_object(ep, object) do
        {:ok, _ep} ->
          :ok

        {:error, _cs} ->
          :duplicate
      end

    {:noreply, assign(socket, :add_status, add_status)}
  end

  def handle_event("object_name_entered", %{"object_name" => object_name}, socket) do
    {:noreply,
     assign_async(socket, :object, fn -> {:ok, %{object: Scraper.scrape_object(object_name)}} end)}
  end

  def handle_event(
        "endpoint_selected",
        %{"endpoint_friendly_name" => endpoint_friendy_name},
        socket
      ) do
    socket
    |> assign(endpoint_friendy_name: endpoint_friendy_name)
    |> then(&{:noreply, &1})
  end

  defp fetch_endpoint_records("quickbooks") do
    Conduit.Quickbooks.Endpoints.list()
  end

  defp fetch_endpoint_records(_) do
    []
  end
end
