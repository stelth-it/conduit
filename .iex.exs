require Logger
alias Conduit.Sage.Request.Function, as: SF
alias Conduit.Sage.Request, as: SR
alias Conduit.Sage.Repo
import Ecto.Query

request_options =
  [
    authentication: [
      user_id: System.get_env("WEB_USER"),
      company_id: System.get_env("COMPANY_ID"),
      user_password: System.get_env("WEB_USER_PASSWORD")
    ],
    control: [
      web_sender_id: System.get_env("SENDER_ID"),
      web_sender_password: System.get_env("SENDER_PASSWORD")
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
