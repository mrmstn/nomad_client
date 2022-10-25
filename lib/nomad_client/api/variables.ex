# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Api.Variables do
  @moduledoc """
  API calls for all endpoints tagged `Variables`.
  """

  alias NomadClient.Connection
  import NomadClient.RequestBuilder

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `path` (String.t): A path to a Nomad Variable
  - `variable` (Variable): 
  - `opts` (keyword): Optional parameters
    - `:region` (String.t): Filters results based on the specified region.
    - `:namespace` (String.t): Filters results based on the specified namespace.
    - `:x_nomad_token` (String.t): A Nomad ACL token.
    - `:idempotency_token` (String.t): Can be used to ensure operations are only run once.
    - `:cas` (integer()): A compare-and-set parameter for Nomad Variables

  ### Returns

  - `{:ok, nil}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec delete_variable(Tesla.Env.client(), String.t(), NomadClient.Model.Variable.t(), keyword()) ::
          {:ok, nil} | {:error, Tesla.Env.t()}
  def delete_variable(connection, path, variable, opts \\ []) do
    optional_params = %{
      :region => :query,
      :namespace => :query,
      :"X-Nomad-Token" => :headers,
      :idempotency_token => :query,
      :cas => :query
    }

    request =
      %{}
      |> method(:delete)
      |> url("/var/#{path}")
      |> add_param(:body, :body, variable)
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
  - `path` (String.t): A path to a Nomad Variable
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

  - `{:ok, NomadClient.Model.Variable.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_variable_query(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, nil} | {:ok, NomadClient.Model.Variable.t()} | {:error, Tesla.Env.t()}
  def get_variable_query(connection, path, opts \\ []) do
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
      |> url("/var/#{path}")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %NomadClient.Model.Variable{}},
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

  - `{:ok, [%VariableMetadata{}, ...]}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec get_variables_list_request(Tesla.Env.client(), keyword()) ::
          {:ok, nil}
          | {:ok, list(NomadClient.Model.VariableMetadata.t())}
          | {:error, Tesla.Env.t()}
  def get_variables_list_request(connection, opts \\ []) do
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
      |> url("/vars")
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, [%NomadClient.Model.VariableMetadata{}]},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `path` (String.t): A path to a Nomad Variable
  - `variable` (Variable): 
  - `opts` (keyword): Optional parameters
    - `:region` (String.t): Filters results based on the specified region.
    - `:namespace` (String.t): Filters results based on the specified namespace.
    - `:x_nomad_token` (String.t): A Nomad ACL token.
    - `:idempotency_token` (String.t): Can be used to ensure operations are only run once.
    - `:cas` (integer()): A compare-and-set parameter for Nomad Variables

  ### Returns

  - `{:ok, NomadClient.Model.Variable.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec post_variable(Tesla.Env.client(), String.t(), NomadClient.Model.Variable.t(), keyword()) ::
          {:ok, nil} | {:ok, NomadClient.Model.Variable.t()} | {:error, Tesla.Env.t()}
  def post_variable(connection, path, variable, opts \\ []) do
    optional_params = %{
      :region => :query,
      :namespace => :query,
      :"X-Nomad-Token" => :headers,
      :idempotency_token => :query,
      :cas => :query
    }

    request =
      %{}
      |> method(:post)
      |> url("/var/#{path}")
      |> add_param(:body, :body, variable)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %NomadClient.Model.Variable{}},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end

  @doc """

  ### Parameters

  - `connection` (NomadClient.Connection): Connection to server
  - `path` (String.t): A path to a Nomad Variable
  - `variable` (Variable): 
  - `opts` (keyword): Optional parameters
    - `:region` (String.t): Filters results based on the specified region.
    - `:namespace` (String.t): Filters results based on the specified namespace.
    - `:x_nomad_token` (String.t): A Nomad ACL token.
    - `:idempotency_token` (String.t): Can be used to ensure operations are only run once.
    - `:cas` (integer()): A compare-and-set parameter for Nomad Variables

  ### Returns

  - `{:ok, NomadClient.Model.Variable.t}` on success
  - `{:error, Tesla.Env.t}` on failure
  """
  @spec put_variable(Tesla.Env.client(), String.t(), NomadClient.Model.Variable.t(), keyword()) ::
          {:ok, nil} | {:ok, NomadClient.Model.Variable.t()} | {:error, Tesla.Env.t()}
  def put_variable(connection, path, variable, opts \\ []) do
    optional_params = %{
      :region => :query,
      :namespace => :query,
      :"X-Nomad-Token" => :headers,
      :idempotency_token => :query,
      :cas => :query
    }

    request =
      %{}
      |> method(:put)
      |> url("/var/#{path}")
      |> add_param(:body, :body, variable)
      |> add_optional_params(optional_params, opts)
      |> Enum.into([])

    connection
    |> Connection.request(request)
    |> evaluate_response([
      {200, %NomadClient.Model.Variable{}},
      {400, false},
      {403, false},
      {405, false},
      {500, false}
    ])
  end
end
