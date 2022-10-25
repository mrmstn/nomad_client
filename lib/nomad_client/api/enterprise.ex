# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Api.Enterprise do
  @moduledoc """
  API calls for all endpoints tagged `Enterprise`.
  """

  alias NomadClient.Connection
  import NomadClient.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `quota_spec` (QuotaSpec):
  - `opts` (keyword): Optional parameters
    - `:region` (String.t): Filters results based on the specified region.
    - `:namespace` (String.t): Filters results based on the specified namespace.
    - `:x_nomad_token` (String.t): A Nomad ACL token.
    - `:idempotency_token` (String.t): Can be used to ensure operations are only run once.

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec create_quota_spec(Tesla.Env.client(), NomadClient.Model.QuotaSpec.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def create_quota_spec(connection, quota_spec, opts \\ []) do
    optional_params = %{
      :region => :query,
      :namespace => :query,
      :"X-Nomad-Token" => :headers,
      :idempotency_token => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/quota")
      |> add_param(:body, :body, quota_spec)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `spec_name` (String.t): The quota spec identifier.
  - `opts` (keyword): Optional parameters
    - `:region` (String.t): Filters results based on the specified region.
    - `:namespace` (String.t): Filters results based on the specified namespace.
    - `:x_nomad_token` (String.t): A Nomad ACL token.
    - `:idempotency_token` (String.t): Can be used to ensure operations are only run once.

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_quota_spec(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def delete_quota_spec(connection, spec_name, opts \\ []) do
    optional_params = %{
      :region => :query,
      :namespace => :query,
      :"X-Nomad-Token" => :headers,
      :idempotency_token => :query
    }

    request =
      %{}
      |> method(:delete)
      |> url("/quota/#{spec_name}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `spec_name` (String.t): The quota spec identifier.
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

  - `{:ok, NomadClient.Model.QuotaSpec.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_quota_spec(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:ok, NomadClient.Model.QuotaSpec.t()} | {:error, Tesla.Env.t()}
  def get_quota_spec(connection, spec_name, opts \\ []) do
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
      |> url("/quota/#{spec_name}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %NomadClient.Model.QuotaSpec{}},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end

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

  - `{:ok, [any(), ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_quotas(Tesla.Env.client(), keyword()) ::
          {:ok, nil} | {:ok, list(any())} | {:error, Tesla.Env.t()}
  def get_quotas(connection, opts \\ []) do
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
      |> url("/quotas")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%{}]},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `spec_name` (String.t): The quota spec identifier.
  - `quota_spec` (QuotaSpec):
  - `opts` (keyword): Optional parameters
    - `:region` (String.t): Filters results based on the specified region.
    - `:namespace` (String.t): Filters results based on the specified namespace.
    - `:x_nomad_token` (String.t): A Nomad ACL token.
    - `:idempotency_token` (String.t): Can be used to ensure operations are only run once.

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_quota_spec(
          Tesla.Env.client(),
          String.t(),
          NomadClient.Model.QuotaSpec.t(),
          keyword()
        ) :: {:ok, nil} | {:error, Tesla.Env.t()}
  def post_quota_spec(connection, spec_name, quota_spec, opts \\ []) do
    optional_params = %{
      :region => :query,
      :namespace => :query,
      :"X-Nomad-Token" => :headers,
      :idempotency_token => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/quota/#{spec_name}")
      |> add_param(:body, :body, quota_spec)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, false},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end
end
