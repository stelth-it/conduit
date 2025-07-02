defmodule Elixir.Conduit.Sage.Object.Glresolve do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "GLENTRYKEY PRENTRYKEY PRRECORDKEY DOCENTRYKEY SUBTOTKEY DOCHDRKEY TRX_AMOUNT CURRENCY AMOUNT WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "GLRESOLVE" do
    field :GLENTRYKEY, :integer, primary_key: true

    field :PRENTRYKEY, :integer, primary_key: true

    field :PRRECORDKEY, :integer, primary_key: true

    field :DOCENTRYKEY, :integer, primary_key: true

    field :SUBTOTKEY, :integer, primary_key: true

    field :DOCHDRKEY, :integer, primary_key: true

    field :TRX_AMOUNT, Conduit.Sage.Object.Float, primary_key: true

    field :CURRENCY, :string, primary_key: true

    field :AMOUNT, Conduit.Sage.Object.Float, primary_key: true

    field :WHENCREATED, Conduit.Sage.Object.DateTime, primary_key: true

    field :WHENMODIFIED, Conduit.Sage.Object.DateTime, primary_key: true

    field :CREATEDBY, :integer, primary_key: true

    field :MODIFIEDBY, :integer, primary_key: true

    field :RECORD_URL, :string, primary_key: true

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "GLRESOLVE")
  end

  def from_api(struct, params \\ %{}) do
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
      Elixir.Conduit.Sage.Object.Glresolve.from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Glresolve.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Glresolve.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Glresolve.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Glresolve.field_list(:strings)

    def table_name(_t), do: "GLRESOLVE"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
