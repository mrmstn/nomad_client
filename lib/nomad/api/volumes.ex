# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Api.Volumes do
  @moduledoc """
  API calls for all endpoints tagged `Volumes`.
  """

  alias Nomad.Connection
  import Nomad.RequestBuilder

  @doc """
  deregisters an external volume with Nomad. It is an error to deregister a volume that is in use

  ## Parameters

  - connection (Nomad.Connection): Connection to server
  - volume_id (String.t): Specifies the ID of the volume. This must be the full ID. This is specified as part of the path
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec deregister_volume(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def deregister_volume(connection, volume_id, _opts \\ []) do
    %{}
    |> method(:delete)
    |> url("/volume/csi/#{volume_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end

  @doc """
  reads information about a specific volume

  ## Parameters

  - connection (Nomad.Connection): Connection to server
  - volume_id (String.t): Specifies the ID of the volume. This must be the full ID. This is specified as part of the path
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, Nomad.Model.CsiVolume.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_volume(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, Nomad.Model.CsiVolume.t()} | {:error, Tesla.Env.t()}
  def get_volume(connection, volume_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/volume/csi/#{volume_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %Nomad.Model.CsiVolume{}}
    ])
  end

  @doc """
  lists all volumes

  ## Parameters

  - connection (Nomad.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :type (String.t): Specifies the type of volume to query. Currently only supports csi. This is specified as a query string parameter. Returns an empty list if omitted
    - :node_id (String.t): node id
    - :plugin_id (String.t): Specifies a string to filter volumes based on a plugin ID prefix
  ## Returns

  {:ok, [%CsiVolumeListStub{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_volumes(Tesla.Env.client(), keyword()) ::
          {:ok, list(Nomad.Model.CsiVolumeListStub.t())} | {:error, Tesla.Env.t()}
  def get_volumes(connection, opts \\ []) do
    optional_params = %{
      :type => :query,
      :node_id => :query,
      :plugin_id => :query
    }

    %{}
    |> method(:get)
    |> url("/volumes")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%Nomad.Model.CsiVolumeListStub{}]}
    ])
  end

  @doc """
  registers an external volume with Nomad. It is an error to register an existing volume

  ## Parameters

  - connection (Nomad.Connection): Connection to server
  - volume_id (String.t): Specifies the ID of the volume. This must be the full ID. This is specified as part of the path
  - opts (KeywordList): [optional] Optional parameters
    - :body (CsiVolumeRegisterRequest): 
  ## Returns

  {:ok, nil} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec register_volume(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def register_volume(connection, volume_id, opts \\ []) do
    optional_params = %{
      :body => :body
    }

    %{}
    |> method(:put)
    |> url("/volume/csi/#{volume_id}")
    |> add_optional_params(optional_params, opts)
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, false}
    ])
  end
end
