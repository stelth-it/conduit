defmodule Conduit.QAD.QadImports do
  @moduledoc """
  Functions for working with QadImports
  """
  alias Conduit.QAD.QadImports.QadImport
  alias Conduit.Repo

  def new(import_type) do
    %QadImport{}
    |> QadImport.changeset(%{import_type: import_type})
    |> Repo.insert()
  end

  def get_by_id(id) do
    Repo.get(QadImport, id)
  end
end
