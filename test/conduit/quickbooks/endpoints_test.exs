defmodule Conduit.Quickbooks.EndpointsTest do
  @moduledoc false
  use Conduit.DataCase, async: true
  alias Conduit.Quickbooks.Endpoints
  alias Conduit.Quickbooks.Endpoints.Endpoint
  alias Conduit.Quickbooks.EndpointsFixtures

  setup do
    %{
      valid_ep_map: EndpointsFixtures.valid_endpoint(),
      valid_refresh_map: EndpointsFixtures.valid_refresh_token()
    }
  end

  describe "new/1" do
    test "inserts a valid map", ctx do
      assert match?({:ok, ep}, Endpoints.new(ctx.valid_ep_map))
    end

    test "does not insert invalid map", ctx do
      assert match?({:error, ep}, Endpoints.new(Map.drop(ctx.valid_ep_map, [:type])))
    end
  end

  describe "get_by_company_id/1" do
    test "finds valid id", ctx do
      {:ok, ep} = Endpoints.new(ctx.valid_ep_map)

      assert match?(
               %Endpoint{},
               Endpoints.get_by_company_id(
                 ctx.valid_ep_map.company_id,
                 String.to_atom(ctx.valid_ep_map.type)
               )
             )
    end

    test "cannot find invalid id", ctx do
      {:ok, ep} = Endpoints.new(ctx.valid_ep_map)

      assert nil ==
               Endpoints.get_by_company_id(
                 ctx.valid_ep_map.company_id <> "h",
                 String.to_atom(ctx.valid_ep_map.type)
               )
    end
  end

  describe "update_refresh_token/2" do
    test "updates with string", ctx do
      {:ok, ep} = Endpoints.new(ctx.valid_ep_map)
      assert match?({:ok, %Endpoint{}}, Endpoints.update_refresh_token(ep, "tokenstring"))
    end

    test "updates with map", ctx do
      {:ok, ep} = Endpoints.new(ctx.valid_ep_map)
      assert match?({:ok, %Endpoint{}}, Endpoints.update_refresh_token(ep, ctx.valid_refresh_map))
    end
  end

  describe "fetch_access_token" do
    test "fetches and updates refresh token", ctx do
      {:ok, ep} = Endpoints.new(ctx.valid_ep_map)

      resp = EndpointsFixtures.valid_token_response(ep.refresh_token.value <> "h")

      Req.Test.stub(Conduit.QB, fn conn ->
        Req.Test.json(conn, resp)
      end)

      {:ok, at, nep} = Endpoints.fetch_access_token(ep)
      assert at.access_token == resp.access_token, "access token was not set to correct value!"

      assert nep.refresh_token.value == resp.refresh_token,
             "endpoint was not updated with new refresh token!"
    end
  end
end
