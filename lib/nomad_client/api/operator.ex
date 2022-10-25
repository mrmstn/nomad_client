# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Api.Operator do
  @moduledoc """
  API calls for all endpoints tagged `Operator`.
  """

  alias NomadClient.Connection
  import NomadClient.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `opts` (keyword): Optional parameters
    - `:region` (String.t): Filters results based on the specified region.
    - `:namespace` (String.t): Filters results based on the specified namespace.
    - `:x_nomad_token` (String.t): A Nomad ACL token.
    - `:idempotency_token` (String.t): Can be used to ensure operations are only run once.

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_operator_raft_peer(Tesla.Env.client(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def delete_operator_raft_peer(connection, opts \\ []) do
    optional_params = %{
      :region => :query,
      :namespace => :query,
      :"X-Nomad-Token" => :headers,
      :idempotency_token => :query
    }

    request =
      %{}
      |> method(:delete)
      |> url("/operator/raft/peer")
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

  - `{:ok, NomadClient.Model.AutopilotConfiguration.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_operator_autopilot_configuration(Tesla.Env.client(), keyword()) ::
          {:ok, NomadClient.Model.AutopilotConfiguration.t()}
          | {:ok, nil}
          | {:error, Tesla.Env.t()}
  def get_operator_autopilot_configuration(connection, opts \\ []) do
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
      |> url("/operator/autopilot/configuration")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %NomadClient.Model.AutopilotConfiguration{}},
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

  - `{:ok, NomadClient.Model.OperatorHealthReply.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_operator_autopilot_health(Tesla.Env.client(), keyword()) ::
          {:ok, nil} | {:ok, NomadClient.Model.OperatorHealthReply.t()} | {:error, Tesla.Env.t()}
  def get_operator_autopilot_health(connection, opts \\ []) do
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
      |> url("/operator/autopilot/health")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %NomadClient.Model.OperatorHealthReply{}},
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

  - `{:ok, NomadClient.Model.RaftConfiguration.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_operator_raft_configuration(Tesla.Env.client(), keyword()) ::
          {:ok, nil} | {:ok, NomadClient.Model.RaftConfiguration.t()} | {:error, Tesla.Env.t()}
  def get_operator_raft_configuration(connection, opts \\ []) do
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
      |> url("/operator/raft/configuration")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %NomadClient.Model.RaftConfiguration{}},
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

  - `{:ok, NomadClient.Model.SchedulerConfigurationResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_operator_scheduler_configuration(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, NomadClient.Model.SchedulerConfigurationResponse.t()}
          | {:error, Tesla.Env.t()}
  def get_operator_scheduler_configuration(connection, opts \\ []) do
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
      |> url("/operator/scheduler/configuration")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %NomadClient.Model.SchedulerConfigurationResponse{}},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `scheduler_configuration` (SchedulerConfiguration): 
  - `opts` (keyword): Optional parameters
    - `:region` (String.t): Filters results based on the specified region.
    - `:namespace` (String.t): Filters results based on the specified namespace.
    - `:x_nomad_token` (String.t): A Nomad ACL token.
    - `:idempotency_token` (String.t): Can be used to ensure operations are only run once.

  ### Returns

  - `{:ok, NomadClient.Model.SchedulerSetConfigurationResponse.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_operator_scheduler_configuration(
          Tesla.Env.client(),
          NomadClient.Model.SchedulerConfiguration.t(),
          keyword()
        ) ::
          {:ok, nil}
          | {:ok, NomadClient.Model.SchedulerSetConfigurationResponse.t()}
          | {:error, Tesla.Env.t()}
  def post_operator_scheduler_configuration(connection, scheduler_configuration, opts \\ []) do
    optional_params = %{
      :region => :query,
      :namespace => :query,
      :"X-Nomad-Token" => :headers,
      :idempotency_token => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/operator/scheduler/configuration")
      |> add_param(:body, :body, scheduler_configuration)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %NomadClient.Model.SchedulerSetConfigurationResponse{}},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `autopilot_configuration` (AutopilotConfiguration): 
  - `opts` (keyword): Optional parameters
    - `:region` (String.t): Filters results based on the specified region.
    - `:namespace` (String.t): Filters results based on the specified namespace.
    - `:x_nomad_token` (String.t): A Nomad ACL token.
    - `:idempotency_token` (String.t): Can be used to ensure operations are only run once.

  ### Returns

  - `{:ok, boolean()}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec put_operator_autopilot_configuration(
          Tesla.Env.client(),
          NomadClient.Model.AutopilotConfiguration.t(),
          keyword()
        ) :: {:ok, nil} | {:ok, Boolean.t()} | {:error, Tesla.Env.t()}
  def put_operator_autopilot_configuration(connection, autopilot_configuration, opts \\ []) do
    optional_params = %{
      :region => :query,
      :namespace => :query,
      :"X-Nomad-Token" => :headers,
      :idempotency_token => :query
    }

    request =
      %{}
      |> method(:put)
      |> url("/operator/autopilot/configuration")
      |> add_param(:body, :body, autopilot_configuration)
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
