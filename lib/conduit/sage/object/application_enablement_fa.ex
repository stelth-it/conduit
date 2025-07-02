defmodule Elixir.Conduit.Sage.Object.Application_enablement_fa do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "name createdBy createdAt updatedBy updatedAt id RECORD_URL action_app allow_edit application_enablement"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "APPLICATION_ENABLEMENT_FA" do
    field(:name, :string)

    field(:comment, :string)

    field(:createdBy, :string)

    field(:createdAt, Conduit.Sage.Object.DateTime)

    field(:updatedBy, :string)

    field(:updatedAt, Conduit.Sage.Object.DateTime)

    field(:id, :integer)

    field(:RECORD_URL, :string)

    field(:action_app, :string)

    field(:allow_edit, :boolean)

    field(:application_enablement, :string)

    field(:application_version, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "application_enablement_fa")
  end

  def struct_from_api(struct, params \\ %{}) do
    struct
    |> cast(params, __MODULE__.__schema__(:fields))
    |> apply_action!(:received)
  end

  def cast_from_api(struct, params \\ %{}) do
    struct
    |> cast(params, __MODULE__.__schema__(:fields))
  end

  def field_list(:atoms) do
    @field_names
    |> Enum.map(fn d ->
      d
      |> String.downcase()
      |> String.to_atom()
    end)
  end

  def field_list(:strings) do
    @field_names
  end

  defimpl Conduit.Sage.Object.Queryable, for: __MODULE__ do
    def struct_from_api(t, params) do
      Elixir.Conduit.Sage.Object.Application_enablement_fa.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Application_enablement_fa.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Application_enablement_fa.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Application_enablement_fa.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Application_enablement_fa.field_list(:strings)

    def table_name(_t), do: "APPLICATION_ENABLEMENT_FA"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
