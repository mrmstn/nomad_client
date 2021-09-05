defmodule NomadClient.ConnectonTest do
  use ExUnit.Case
  alias NomadClient.Api.Jobs
  alias NomadClient.Connection

  describe "url path fix" do
    setup do
      expected = %Tesla.Client{
        adapter: nil,
        fun: nil,
        post: [],
        pre: [
          {Tesla.Middleware.BaseUrl, :call, ["http://localhost:4646/v1"]},
          {Tesla.Middleware.Headers, :call, [[{"User-Agent", "Elixir"}]]},
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
      actual = Connection.new("http://localhost:4646")
      assert expected == actual

      actual = Connection.new("http://localhost:4646/")
      assert expected == actual
    end

    test "with /v1", %{expected: expected} do
      actual = Connection.new("http://localhost:4646/v1")
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
          {Tesla.Middleware.BaseUrl, :call, ["http://localhost:4646/v1"]},
          {Tesla.Middleware.Headers, :call, [[{"User-Agent", "Elixir"}]]},
          {Tesla.Middleware.EncodeJson, :call, [[engine: Poison]]}
        ]
      }

      actual = Connection.new()

      assert expected == actual
    end
  end
end
