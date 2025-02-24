defmodule Conduit.Sage.Request.Runner do
  use GenServer
  alias Conduit.Sage.Request, as: SR
  @sage_endpoint "https://api.intacct.com/ia/xml/xmlgw.phtml"

  @start_opts NimbleOptions.new!(
                spacing: [
                  type: :non_neg_integer,
                  default: 1_000,
                  doc: "Time in miliseconds to wait between requests"
                ]
              )
  def start_link(opts \\ []) do
    opts = NimbleOptions.validate!(opts, @start_opts)
    GenServer.start_link(__MODULE__, opts, name: __MODULE__)
  end

  def init(opts) do
    {:ok, opts}
  end

  @doc """
  Submits a request to be run asycn.  The provided callback function 
  will be invokded with the result of request function as its argument.
  """
  @spec submit_async(request_function :: (-> term()), call_back_function :: (term() -> term())) ::
          :ok
  def submit_async(request_function, call_back_function)
      when is_function(request_function, 0) and is_function(call_back_function, 1) do
    GenServer.cast(__MODULE__, {:async_request, request_function, call_back_function})
  end

  def handle_cast({:async_request, request_function, call_back_function}, state) do
    Process.sleep(state[:spacing])
    call_back_function.(request_function.())
    {:noreply, state}
  end

  @submit_sync_opts NimbleOptions.new!(
                      retries: [
                        type: :non_neg_integer,
                        default: 0,
                        doc: "the number of times the request will be resent on failure"
                      ]
                    )
  @doc """
  Submits a request sync.  The result of the requst fucntion will be returned.
  """
  @spec submit_sync(request :: SR.t()) :: request_result :: term()
  def submit_sync(%SR{} = request, opts \\ []) do
    opts =
      NimbleOptions.validate!(opts, @submit_sync_opts)

    GenServer.call(
      __MODULE__,
      {:sync_request,
       fn ->
         retry(fn -> send_request(request) end, opts[:retries])
       end},
      20_000
    )
  end

  def handle_call({:sync_request, request_function}, _from, state) do
    Process.sleep(state[:spacing])
    {:reply, request_function.(), state}
  end

  @spec send_request(request_struct :: SR.t()) ::
          response :: {:ok, Req.Response.t()} | {:error, Exception.t()}
  defp send_request(request) do
    Req.post(@sage_endpoint,
      body: to_string(request),
      headers: [{"content-type", "application/xml"}]
    )
  end

  @doc """
  Will run the given zero arity function until an :ok tuple is 
  returned or it has been attempted `retry_count` times.

  Useful for fucntions with side effects that may fail, like web requests.
  """
  @spec retry(func :: (-> {:ok, term()} | {:error, term()}), retry_count :: non_neg_integer()) ::
          {:ok, term()} | {:error, term()}
  def retry(func, retry_count) do
    Stream.unfold({func.(), retry_count}, fn
      :done -> nil
      {result, 0} -> {result, :done}
      {{:ok, _} = result, _n} -> {result, :done}
      {{:error, _} = result, n} -> {result, {func.(), n - 1}}
    end)
    |> Enum.to_list()
    |> List.last()
  end

  @doc """
  Will extract the keys that are used by runner from the given option
  keyword.
  """
  @spec extract_runner_options(opts :: Keyword.t()) :: runner_opts :: Keyword.t()
  def extract_runner_options(opts) when is_list(opts) do
    Keyword.take(opts, [:retries])
  end
end
