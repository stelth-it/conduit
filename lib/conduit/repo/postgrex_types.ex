Postgrex.Types.define(
  Conduit.Repo.PostgrexTypes,
  Pgvector.extensions() ++ Ecto.Adapters.Postgres.extensions()
)
