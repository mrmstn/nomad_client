# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Api.Status do
  @moduledoc """
  API calls for all endpoints tagged `Status`.
  """

  alias Nomad.Connection
  import Nomad.RequestBuilder

  @doc """
  returns the address of the current leader in the region

  ## Parameters

  - connection (Nomad.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_leader(Tesla.Env.client(), keyword()) :: {:ok, String.t()} | {:error, Tesla.Env.t()}
  def get_leader(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/status/leader")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  returns the set of raft peers in the region

  ## Parameters

  - connection (Nomad.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%String{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_peers(Tesla.Env.client(), keyword()) ::
          {:ok, list(String.t())} | {:error, Tesla.Env.t()}
  def get_peers(connection, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/status/peers")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, []}
    ])
  end
end
