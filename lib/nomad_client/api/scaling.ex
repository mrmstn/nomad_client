# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Api.Scaling do
  @moduledoc """
  API calls for all endpoints tagged `Scaling`.
  """

  alias NomadClient.Connection
  import NomadClient.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:region` (String.t): Filters results based on the specified region.
    - `:namespace` (String.t): Filters results based on the specified namespace.
    - `:index` (integer()): If set, wait until query exceeds given index. Must be provided with WaitParam.
    - `:wait` (String.t): Provided with IndexParam to wait for change.
    - `:stale` (String.t): If present, results will include stale reads.
    - `:prefix` (String.t): Constrains results to jobs that start with the defined prefix
    - `:x_nomad_token` (String.t): A Nomad ACL token.
    - `:per_page` (integer()): Maximum number of results to return.
    - `:next_token` (String.t): Indicates where to start paging for queries that support pagination.

  ### Returns

  - `{:ok, [%ScalingPolicyListStub{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_scaling_policies(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, list(NomadClient.Model.ScalingPolicyListStub.t())}
          | {:error, Tesla.Env.t()}
  def get_scaling_policies(connection, opts \\ []) do
    optional_params = %{
      :region => :query,
      :namespace => :query,
      :index => :headers,
      :wait => :query,
      :stale => :query,
      :prefix => :query,
      :"X-Nomad-Token" => :headers,
      :per_page => :query,
      :next_token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/scaling/policies")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%NomadClient.Model.ScalingPolicyListStub{}]},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `policy_id` (String.t): The scaling policy identifier.
  - `opts` (keyword): Optional parameters
    - `:region` (String.t): Filters results based on the specified region.
    - `:namespace` (String.t): Filters results based on the specified namespace.
    - `:index` (integer()): If set, wait until query exceeds given index. Must be provided with WaitParam.
    - `:wait` (String.t): Provided with IndexParam to wait for change.
    - `:stale` (String.t): If present, results will include stale reads.
    - `:prefix` (String.t): Constrains results to jobs that start with the defined prefix
    - `:x_nomad_token` (String.t): A Nomad ACL token.
    - `:per_page` (integer()): Maximum number of results to return.
    - `:next_token` (String.t): Indicates where to start paging for queries that support pagination.

  ### Returns

  - `{:ok, NomadClient.Model.ScalingPolicy.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_scaling_policy(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:ok, NomadClient.Model.ScalingPolicy.t()} | {:error, Tesla.Env.t()}
  def get_scaling_policy(connection, policy_id, opts \\ []) do
    optional_params = %{
      :region => :query,
      :namespace => :query,
      :index => :headers,
      :wait => :query,
      :stale => :query,
      :prefix => :query,
      :"X-Nomad-Token" => :headers,
      :per_page => :query,
      :next_token => :query
    }

    request =
      %{}
      |> method(:get)
      |> url("/scaling/policy/#{policy_id}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %NomadClient.Model.ScalingPolicy{}},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end
end
