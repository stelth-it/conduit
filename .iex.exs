require Logger
alias Conduit.Sage.Request.Function, as: SF
alias Conduit.Sage.Request, as: SR
alias Conduit.Repo
alias Conduit.QAD

import Ecto.Query

api_config = Application.get_env(:conduit, :sage_api_config)

request_options =
  [
    authentication: [
      user_id: api_config[:user_id],
      company_id: api_config[:company_id],
      user_password: api_config[:user_password]
    ],
    control: [
      web_sender_id: api_config[:web_sender_id],
      web_sender_password: api_config[:web_sender_password]
    ]
  ]

request =
  case SR.new(request_options) |> Conduit.Sage.get_api_token() do
    {:ok, request} ->
      request

    {:error, _} ->
      Logger.warning("could not get api token for request!")
      nil
  end
