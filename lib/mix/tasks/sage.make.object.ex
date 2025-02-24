defmodule Mix.Tasks.Sage.Make.Object.Docs do
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
  defmodule Mix.Tasks.Sage.Make.Object do
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
        schema: [
          object_name: :string,
          endpoint_id: :integer,
          object_prefix: :string,
          only_schema: :boolean
        ],
        # Default values for the options in the `schema`
        defaults: [],
        # CLI aliases
        aliases: [],
        # A list of options in the schema that are required
        required: [:endpoint_id]
      }
    end

    @schema_type_translations %{
      "integer" => :integer,
      "string" => :string,
      "boolean" => :boolean,
      "number" => Conduit.Sage.Object.Float,
      "datetime" => Conduit.Sage.Object.DateTime,
      "date" => Conduit.Sage.Object.Date,
      "currency" => Conduit.Sage.Object.Float
    }

    @migration_type_translations %{
      "integer" => :integer,
      "string" => :text,
      "boolean" => :boolean,
      "number" => :float,
      "datetime" => :naive_datetime,
      "date" => :naive_datetime,
      "currency" => :float
    }

    @impl Igniter.Mix.Task
    def igniter(igniter) do
      options = igniter.args.options |> Map.new() |> validate_object_options()

      objects =
        if Map.get(options, :object_prefix) do
          Conduit.Sage.Objects.get_by_name_prefix(options.endpoint_id, options.object_prefix)
        else
          List.wrap(
            Conduit.Sage.Objects.get_by_name_and_endpoint(
              options.endpoint_id,
              options.object_name
            )
          )
        end

      Enum.reduce(objects, igniter, fn object, acc ->
        table_name = String.upcase(object.name)

        schema_module_name =
          Igniter.Project.Module.parse("Conduit.Sage.Object.#{String.capitalize(object.name)}")

        description_list =
          object.fields
          |> Enum.map(&Map.from_struct/1)

        schema_descriptions =
          transform_descriptions(description_list, @schema_type_translations)

        migration_descripitons =
          transform_descriptions(description_list, @migration_type_translations)

        acc
        |> Igniter.copy_template(
          "templates/object.eex",
          Igniter.Project.Module.proper_location(igniter, schema_module_name),
          [
            module_name: schema_module_name,
            descriptions: schema_descriptions,
            table_name: table_name,
            endpoint_id: object.endpoint_id,
            object_name: object.name,
            field_names:
              object.fields
              |> Enum.reject(& &1.forbidden)
              |> Enum.map(& &1.name)
              |> Enum.join(" ")
          ],
          on_exists: :overwrite
        )
        |> then(fn igniter ->
          if Map.get(options, :only_schema) do
            igniter
          else
            Igniter.Libs.Ecto.gen_migration(
              igniter,
              Conduit.Repo,
              "Add#{String.capitalize(object.name)}",
              body:
                EEx.eval_file("templates/migration.eex",
                  assigns: [
                    descriptions: migration_descripitons,
                    table_name: table_name
                  ]
                ),
              on_exists: :skip
            )
          end
        end)
        |> tap(fn _ -> Process.sleep(1_000) end)
      end)
    end

    # TODO: Change map lookup to default to string.  All types can be 
    # represented as strings in the last resort.
    defp transform_descriptions(description_list, translation_map) do
      description_list
      |> Enum.map(fn d ->
        d
        |> Map.update!(:name, &String.to_atom/1)
        |> Map.update!(:type, &Map.fetch!(translation_map, &1))
      end)
    end

    defp validate_object_options(options) do
      case {Map.get(options, :object_name), Map.get(options, :object_prefix)} do
        {nil, nil} ->
          raise ArgumentError,
                "Either --object-name or --object-prefix must be provided"

        {name, nil} when not is_nil(name) ->
          options

        {nil, prefix} when not is_nil(prefix) ->
          options

        {_name, _prefix} ->
          raise ArgumentError,
                "Only one of --object-name or --object-prefix can be provided, not both"
      end
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
