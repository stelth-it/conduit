defmodule Elixir.Conduit.Sage.Object.Glcompgrpmember do
  use Ecto.Schema
  import Ecto.Changeset

  @field_names "RECORDNO PARENTKEY LHSACCTNO LHSACCTGRPNAME LHSCONST OPERATOR RHSACCTNO RHSACCTGRPNAME RHSCONST PRECISION DISPLAYAS UOM LHSASOF RHSASOF UOMALIGNMENT WHENCREATED WHENMODIFIED CREATEDBY MODIFIEDBY RECORD_URL"
               |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  schema "GLCOMPGRPMEMBER" do
    field :RECORDNO, :string, primary_key: true

    field :PARENTKEY, :integer, primary_key: true

    field :LHSACCTNO, :string, primary_key: true

    field :LHSACCTGRPNAME, :string, primary_key: true

    field :LHSCONST, :string, primary_key: true

    field :OPERATOR, :string, primary_key: true

    field :RHSACCTNO, :string, primary_key: true

    field :RHSACCTGRPNAME, :string, primary_key: true

    field :RHSCONST, :string, primary_key: true

    field :PRECISION, :string, primary_key: true

    field :DISPLAYAS, :string, primary_key: true

    field :UOM, :string, primary_key: true

    field :LHSASOF, :string, primary_key: true

    field :RHSASOF, :string, primary_key: true

    field :UOMALIGNMENT, :string, primary_key: true

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
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "GLCOMPGRPMEMBER")
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
      Elixir.Conduit.Sage.Object.Glcompgrpmember.from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Glcompgrpmember.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Glcompgrpmember.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Glcompgrpmember.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Glcompgrpmember.field_list(:strings)

    def table_name(_t), do: "GLCOMPGRPMEMBER"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
