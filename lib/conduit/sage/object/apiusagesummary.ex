defmodule Elixir.Conduit.Sage.Object.Apiusagesummary do
  use TypedEctoSchema
  import Ecto.Changeset

  @field_names "RECORDNO TOTAL_TRANS DAILY_SUM CLIENT_TYPE TODAY RECORD_URL" |> String.split()

  @primary_key {:pg_id, :id, autogenerate: true}
  typed_schema "APIUSAGESUMMARY" do
    field(:RECORDNO, :string)

    field(:TOTAL_TRANS, :integer)

    field(:DAILY_SUM, :integer)

    field(:CLIENT_TYPE, :string)

    field(:TODAY, Conduit.Sage.Object.Date)

    field(:RECORD_URL, :string)

    timestamps(
      inserted_at: :pg_inserted_at,
      updated_at: :pg_updated_at,
      inserted_at_source: :pg_inserted_at,
      updated_at_source: :pg_updated_at
    )
  end

  def description do
    Conduit.Sage.Objects.get_by_name_and_endpoint(1, "APIUSAGESUMMARY")
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
      Elixir.Conduit.Sage.Object.Apiusagesummary.struct_from_api(t, params)
    end

    def description(_t) do
      Elixir.Conduit.Sage.Object.Apiusagesummary.description()
    end

    def field_list(_t, :atoms) do
      Elixir.Conduit.Sage.Object.Apiusagesummary.field_list(:atoms)
    end

    def field_list(_t, :strings) do
      Elixir.Conduit.Sage.Object.Apiusagesummary.field_list(:strings)
    end

    def field_list(_t), do: Elixir.Conduit.Sage.Object.Apiusagesummary.field_list(:strings)

    def table_name(_t), do: "APIUSAGESUMMARY"

    def valid_select?(t, list) do
      MapSet.subset?(
        MapSet.new(list),
        MapSet.new(Conduit.Sage.Object.Queryable.field_list(t))
      )
    end
  end
end
