# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Api.Status do
  @moduledoc """
  API calls for all endpoints tagged `Status`.
  """

  alias NomadClient.Connection
  import NomadClient.RequestBuilder

  @doc """
  returns the address of the current leader in the region

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :namespace (String.t): 
    - :region (String.t): Make a request across regions to the given region
    - :index (integer()): index used for blocking requests
    - :wait (String.t): wait time used for blocking requests
  ## Returns

  {:ok, String.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_leader(Tesla.Env.client(), keyword()) :: {:ok, String.t()} | {:error, Tesla.Env.t()}
  def get_leader(connection, opts \\ []) do
    optional_params = %{
      :namespace => :query,
      :region => :query,
      :index => :query,
      :wait => :query
    }

    %{}
    |> method(:get)
    |> url("/status/leader")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  returns the set of raft peers in the region

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :namespace (String.t): 
    - :region (String.t): Make a request across regions to the given region
    - :index (integer()): index used for blocking requests
    - :wait (String.t): wait time used for blocking requests
  ## Returns

  {:ok, [%String{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_peers(Tesla.Env.client(), keyword()) ::
          {:ok, list(String.t())} | {:error, Tesla.Env.t()}
  def get_peers(connection, opts \\ []) do
    optional_params = %{
      :namespace => :query,
      :region => :query,
      :index => :query,
      :wait => :query
    }

    %{}
    |> method(:get)
    |> url("/status/peers")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, []}
    ])
  end
end
