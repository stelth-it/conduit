defmodule Conduit.Sage.Request.SessionKey do
  use TypedEctoSchema
  @derive {Jason.Encoder, only: [:creation_time]}

  @primary_key false
  typed_embedded_schema do
    field(:value, :string)
    field(:creation_time, :naive_datetime)
    field(:expiration_time, :naive_datetime)
  end

  @new_opts NimbleOptions.new!(
              creation_time: [
                type: {:struct, NaiveDateTime},
                doc: "the time the session key was creeated.  By default now will be used"
              ],
              expiration_time: [
                type: {:struct, NaiveDateTime},
                doc:
                  "the time the session key will expire. By default now + 60 minutes will be used"
              ]
            )
  def new(value, opts \\ []) do
    opts =
      NimbleOptions.validate!(opts, @new_opts)
      |> Keyword.put_new(:creation_time, NaiveDateTime.utc_now())
      |> Keyword.put_new(:expiration_time, NaiveDateTime.add(NaiveDateTime.utc_now(), 1, :hour))

    %__MODULE__{
      value: value,
      creation_time: opts[:creation_time],
      expiration_time: opts[:expiration_time]
    }
  end

  def expired?(%__MODULE__{expiration_time: et}) do
    NaiveDateTime.after?(NaiveDateTime.utc_now(), et)
  end
end

