defmodule Mix.Tasks.Qad.Make.Tables.Docs do
  @moduledoc false

  def short_doc do
    "A short description of your task"
  end

  def example do
    "mix sage.make.object --example arg"
  end

  def long_doc do
    """
    #{short_doc()}

    Longer explanation of your task

    ## Example

    ```bash
    #{example()}
    ```

    ## Options

    * `--example-option` or `-e` - Docs for your option
    """
  end
end

if Code.ensure_loaded?(Igniter) do
  defmodule Mix.Tasks.Qad.Make.Tables do
    @shortdoc "#{__MODULE__.Docs.short_doc()}"

    @moduledoc __MODULE__.Docs.long_doc()
    @requirements ["app.config", "app.start"]

    use Igniter.Mix.Task

    @impl Igniter.Mix.Task
    def info(_argv, _composing_task) do
      %Igniter.Mix.Task.Info{
        # Groups allow for overlapping arguments for tasks by the same author
        # See the generators guide for more.
        group: :sage,
        # dependencies to add
        adds_deps: [],
        # dependencies to add and call their associated installers, if they exist
        installs: [],
        # An example invocation
        example: __MODULE__.Docs.example(),
        # a list of positional arguments, i.e `[:file]`
        positional: [],
        # Other tasks your task composes using `Igniter.compose_task`, passing in the CLI argv
        # This ensures your option schema includes options from nested tasks
        composes: [],
        # `OptionParser` schema
        schema: [],
        # Default values for the options in the `schema`
        defaults: [],
        # CLI aliases
        aliases: [],
        # A list of options in the schema that are required
        required: []
      }
    end

    @schema_type_translations %{
      "char" => :string,
      "logi" => Conduit.QAD.Types.Bool,
      "date" => Conduit.QAD.Types.Date,
      "inte" => :integer,
      "int6" => :integer,
      "deci-10" => :decimal,
      "deci-0" => :decimal,
      "deci-4" => :decimal,
      "deci-2" => :decimal,
      "raw" => :binary
    }

    @migration_type_translations %{
      "char" => :string,
      "logi" => :boolean,
      "date" => :naive_datetime,
      "inte" => :integer,
      "int6" => :integer,
      "deci-10" => :decimal,
      "deci-0" => :decimal,
      "deci-4" => :decimal,
      "deci-2" => :decimal,
      "raw" => :binary
    }

    @impl Igniter.Mix.Task
    def igniter(igniter) do
      tables =
        Conduit.Repo.all(Conduit.QAD.QadTables.QadTable)
        |> Enum.map(&transform_fields/1)

      Enum.reduce(tables, igniter, fn table, igniter ->
        schema_module_name =
          Igniter.Project.Module.parse("Conduit.QAD.Table.#{String.capitalize(table.table_name)}")

        table_name = Conduit.QAD.QadTables.QadTable.postgres_table_name(table)

        igniter
        |> Igniter.copy_template(
          "templates/qad/schema.eex",
          Igniter.Project.Module.proper_location(igniter, schema_module_name),
          [
            module_name: schema_module_name,
            descriptions: table.schema_fields,
            table_name: table_name
          ],
          on_exists: :overwrite
        )
      end)
      |> Igniter.Libs.Ecto.gen_migration(
        Conduit.Repo,
        "Add_qad_tables_detail",
        body:
          EEx.eval_file("templates/qad/migration.eex",
            assigns: [
              tables: tables
            ]
          ),
        on_exists: :increment
      )
    end

    defp transform_fields(table) do
      schema_fields =
        transform_descriptions(table, @schema_type_translations)

      migration_fields =
        transform_descriptions(table, @migration_type_translations)

      table
      |> Map.put(:schema_fields, schema_fields)
      |> Map.put(:migration_fields, migration_fields)
    end

    # TODO: Change map lookup to default to string.  All types can be 
    # represented as strings in the last resort.
    defp transform_descriptions(table, translation_map) do
      new_fields =
        table.fields
        |> Enum.map(fn f ->
          f
          |> convert_type(translation_map)
          |> Map.update!(:field_name, &String.to_atom/1)
        end)

      new_fields
    end

    defp convert_type(%{mult: mult, field_type: ft} = field, translation_map)
         when is_integer(mult) do
      %{field | field_type: {:array, Map.fetch!(translation_map, ft)}}
    end

    defp convert_type(%{field_type: ft} = field, translation_table) do
      %{field | field_type: Map.fetch!(translation_table, ft)}
    end
  end
else
  defmodule Mix.Tasks.Sage.Make.Object do
    @shortdoc "#{__MODULE__.Docs.short_doc()} | Install `igniter` to use"

    @moduledoc __MODULE__.Docs.long_doc()

    use Mix.Task

    def run(_argv) do
      Mix.shell().error("""
      The task 'sage.make.object' requires igniter. Please install igniter and try again.

      For more information, see: https://hexdocs.pm/igniter/readme.html#installation
      """)

      exit({:shutdown, 1})
    end
  end
end
