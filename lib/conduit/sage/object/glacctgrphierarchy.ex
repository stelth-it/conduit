defmodule Elixir.Conduit.Sage.Object.Glacctgrphierarchy do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO GLACCTGRPKEY GLACCTGRPNAME GLACCTGRPTITLE GLACCTGRPNORMALBALANCE GLACCTGRPMEMBERTYPE GLACCTGRPHOWCREATED GLACCTGRPLOCATIONKEY ACCOUNTKEY ACCOUNTNO ACCOUNTTITLE ACCOUNTNORMALBALANCE ACCOUNTTYPE ACCOUNTLOCATIONKEY RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "GLACCTGRPHIERARCHY" do
    field :RECORDNO, :string, primary_key: true

    field :GLACCTGRPKEY, :integer, primary_key: true

    field :GLACCTGRPNAME, :string, primary_key: true

    field :GLACCTGRPTITLE, :string, primary_key: true

    field :GLACCTGRPNORMALBALANCE, :string, primary_key: true

    field :GLACCTGRPMEMBERTYPE, :string, primary_key: true

    field :GLACCTGRPHOWCREATED, :string, primary_key: true

    field :GLACCTGRPLOCATIONKEY, :integer, primary_key: true

    field :ACCOUNTKEY, :integer, primary_key: true

    field :ACCOUNTNO, :string, primary_key: true

    field :ACCOUNTTITLE, :string, primary_key: true

    field :ACCOUNTNORMALBALANCE, :string, primary_key: true

    field :ACCOUNTTYPE, :string, primary_key: true

    field :ACCOUNTLOCATIONKEY, :integer, primary_key: true

    field :RECORD_URL, :string, primary_key: true

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "GLACCTGRPHIERARCHY")
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
      Elixir.Conduit.Sage.Object.Glacctgrphierarchy.from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Glacctgrphierarchy.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Glacctgrphierarchy.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Glacctgrphierarchy.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Glacctgrphierarchy.field_list(:strings)

    def table_name(_t), do: "GLACCTGRPHIERARCHY"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
