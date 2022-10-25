defmodule NomadClient.ConnectonTest do
  use ExUnit.Case
  alias NomadClient.Connection

  describe "url path fix" do
    setup do
      expected = %Tesla.Client{
        adapter: nil,
        fun: nil,
        post: [],
        pre: [
          {Tesla.Middleware.BaseUrl, :call, ["http://127.0.0.1:4646/v1"]},
          {Tesla.Middleware.Headers, :call,
           [[{"user-agent", "openapi-generator - NomadClient 1.1.4 - elixir"}]]},
          {Tesla.Middleware.EncodeJson, :call, [[engine: Poison]]}
        ]
      }

      {:ok, %{expected: expected}}
    end

    test "full default", %{expected: expected} do
      actual = Connection.new()
      assert expected == actual
    end

    test "without v1", %{expected: expected} do
      actual = Connection.new(base_url: "http://127.0.0.1:4646")
      assert expected == actual

      actual = Connection.new(base_url: "http://127.0.0.1:4646/")
      assert expected == actual
    end

    test "with /v1", %{expected: expected} do
      actual = Connection.new(base_url: "http://127.0.0.1:4646/v1")
      assert expected == actual
    end
  end

  describe "Connection.new" do
    test "no url, no token" do
      expected = %Tesla.Client{
        adapter: nil,
        fun: nil,
        post: [],
        pre: [
          {Tesla.Middleware.BaseUrl, :call, ["http://127.0.0.1:4646/v1"]},
          {Tesla.Middleware.Headers, :call,
           [[{"user-agent", "openapi-generator - NomadClient 1.1.4 - elixir"}]]},
          {Tesla.Middleware.EncodeJson, :call, [[engine: Poison]]}
        ]
      }

      actual = Connection.new()

      assert expected == actual
    end
  end
end
