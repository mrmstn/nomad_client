# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Api.Evaluations do
  @moduledoc """
  API calls for all endpoints tagged `Evaluations`.
  """

  alias NomadClient.Connection
  import NomadClient.RequestBuilder

  @doc """
  lists the allocations created or modified for the given evaluation

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - eval_id (String.t): Specifies the UUID of the evaluation. This must be the full UUID, not the short 8-character one. This is specified as part of the path
  - opts (KeywordList): [optional] Optional parameters
    - :namespace (String.t): 
    - :region (String.t): Make a request across regions to the given region
    - :index (integer()): index used for blocking requests
    - :wait (String.t): wait time used for blocking requests
  ## Returns

  {:ok, [%AllocationListStub{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_allocations_for_evaluation(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, list(NomadClient.Model.AllocationListStub.t())} | {:error, Tesla.Env.t()}
  def get_allocations_for_evaluation(connection, eval_id, opts \\ []) do
    optional_params = %{
      :namespace => :query,
      :region => :query,
      :index => :query,
      :wait => :query
    }

    %{}
    |> method(:get)
    |> url("/evaluation/#{eval_id}/allocations")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%NomadClient.Model.AllocationListStub{}]}
    ])
  end

  @doc """
  reads information about a specific evaluation by ID

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - eval_id (String.t): Specifies the UUID of the evaluation. This must be the full UUID, not the short 8-character one. This is specified as part of the path
  - opts (KeywordList): [optional] Optional parameters
    - :namespace (String.t): 
    - :region (String.t): Make a request across regions to the given region
    - :index (integer()): index used for blocking requests
    - :wait (String.t): wait time used for blocking requests
  ## Returns

  {:ok, NomadClient.Model.Evaluation.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_evaluation(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, NomadClient.Model.Evaluation.t()} | {:error, Tesla.Env.t()}
  def get_evaluation(connection, eval_id, opts \\ []) do
    optional_params = %{
      :namespace => :query,
      :region => :query,
      :index => :query,
      :wait => :query
    }

    %{}
    |> method(:get)
    |> url("/evaluation/#{eval_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.Evaluation{}}
    ])
  end

  @doc """
  lists all evaluations

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :namespace (String.t): 
    - :region (String.t): Make a request across regions to the given region
    - :index (integer()): index used for blocking requests
    - :wait (String.t): wait time used for blocking requests
    - :prefix (String.t): Specifies a string to filter jobs on based on an index prefix. This is specified as a query string parameter
  ## Returns

  {:ok, [%Evaluation{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_evaluations(Tesla.Env.client(), keyword()) ::
          {:ok, list(NomadClient.Model.Evaluation.t())} | {:error, Tesla.Env.t()}
  def get_evaluations(connection, opts \\ []) do
    optional_params = %{
      :namespace => :query,
      :region => :query,
      :index => :query,
      :wait => :query,
      :prefix => :query
    }

    %{}
    |> method(:get)
    |> url("/evaluations")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%NomadClient.Model.Evaluation{}]}
    ])
  end
end
