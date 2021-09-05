# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Api.Jobs do
  @moduledoc """
  API calls for all endpoints tagged `Jobs`.
  """

  alias NomadClient.Connection
  import NomadClient.RequestBuilder

  @doc """
  dispatches a new instance of a parameterized job

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - job_dispatch_request (JobDispatchRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobDispatchResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec dispatch_job(
          Tesla.Env.client(),
          String.t(),
          NomadClient.Model.JobDispatchRequest.t(),
          keyword()
        ) :: {:ok, NomadClient.Model.JobDispatchResponse.t()} | {:error, Tesla.Env.t()}
  def dispatch_job(connection, job_id, job_dispatch_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/job/#{job_id}/dispatch")
    |> add_param(:body, :body, job_dispatch_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobDispatchResponse{}}
    ])
  end

  @doc """
  creates a new evaluation for the given job. This can be used to force run the scheduling logic if necessary

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - job_evaluate_request (JobEvaluateRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobRegisterResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec evaluate_job(
          Tesla.Env.client(),
          String.t(),
          NomadClient.Model.JobEvaluateRequest.t(),
          keyword()
        ) :: {:ok, NomadClient.Model.JobRegisterResponse.t()} | {:error, Tesla.Env.t()}
  def evaluate_job(connection, job_id, job_evaluate_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/job/#{job_id}/evaluate")
    |> add_param(:body, :body, job_evaluate_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobRegisterResponse{}}
    ])
  end

  @doc """
  forces a new instance of the periodic job. A new instance will be created even if it violates the job's prohibit_overlap settings. As such, this should be only used to immediately run a periodic job

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.PeriodicForceResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec force_new_periodic_instance(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, NomadClient.Model.PeriodicForceResponse.t()} | {:error, Tesla.Env.t()}
  def force_new_periodic_instance(connection, job_id, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/job/#{job_id}/periodic/force")
    |> ensure_body()
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.PeriodicForceResponse{}}
    ])
  end

  @doc """
  reads information about a single job for its specification and status

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.Job.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_job(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, NomadClient.Model.Job.t()} | {:error, Tesla.Env.t()}
  def get_job(connection, job_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/job/#{job_id}")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.Job{}}
    ])
  end

  @doc """
  reads information about a single job's allocations

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - opts (KeywordList): [optional] Optional parameters
    - :all (boolean()): Specifies whether should include * from a previously registered job with the same ID. This is possible if the job is deregistered and reregistered.
  ## Returns

  {:ok, [%AllocationListStub{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_job_allocations(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, list(NomadClient.Model.AllocationListStub.t())} | {:error, Tesla.Env.t()}
  def get_job_allocations(connection, job_id, opts \\ []) do
    optional_params = %{
      :all => :query
    }

    %{}
    |> method(:get)
    |> url("/job/#{job_id}/allocations")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%NomadClient.Model.AllocationListStub{}]}
    ])
  end

  @doc """
  lists a single job's deployments

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - opts (KeywordList): [optional] Optional parameters
    - :all (boolean()): Specifies whether should include * from a previously registered job with the same ID. This is possible if the job is deregistered and reregistered.
  ## Returns

  {:ok, [%Deployment{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_job_deployments(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, list(NomadClient.Model.Deployment.t())} | {:error, Tesla.Env.t()}
  def get_job_deployments(connection, job_id, opts \\ []) do
    optional_params = %{
      :all => :query
    }

    %{}
    |> method(:get)
    |> url("/job/#{job_id}/deployments")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%NomadClient.Model.Deployment{}]}
    ])
  end

  @doc """
  reads information about a single job's evaluations

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, [%Evaluation{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_job_evaluations(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, list(NomadClient.Model.Evaluation.t())} | {:error, Tesla.Env.t()}
  def get_job_evaluations(connection, job_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/job/#{job_id}/evaluations")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%NomadClient.Model.Evaluation{}]}
    ])
  end

  @doc """
  get a single job's most recent deployment

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.Deployment.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_job_latest_deployment(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, NomadClient.Model.Deployment.t()} | {:error, Tesla.Env.t()}
  def get_job_latest_deployment(connection, job_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/job/#{job_id}/deployment")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.Deployment{}}
    ])
  end

  @doc """
  reads scale information about a job

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobScaleStatusResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_job_scale_status(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, NomadClient.Model.JobScaleStatusResponse.t()} | {:error, Tesla.Env.t()}
  def get_job_scale_status(connection, job_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/job/#{job_id}/scale")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobScaleStatusResponse{}}
    ])
  end

  @doc """
  reads summary information about a job

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobSummary.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_job_summary(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, NomadClient.Model.JobSummary.t()} | {:error, Tesla.Env.t()}
  def get_job_summary(connection, job_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/job/#{job_id}/summary")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobSummary{}}
    ])
  end

  @doc """
  reads information about all versions of a job

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobVersionsResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_job_versions(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, NomadClient.Model.JobVersionsResponse.t()} | {:error, Tesla.Env.t()}
  def get_job_versions(connection, job_id, _opts \\ []) do
    %{}
    |> method(:get)
    |> url("/job/#{job_id}/versions")
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobVersionsResponse{}}
    ])
  end

  @doc """
  lists all known jobs in the system registered with Nomad

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - opts (KeywordList): [optional] Optional parameters
    - :prefix (String.t): Specifies a string to filter jobs on based on an index prefix. This is specified as a query string parameter
  ## Returns

  {:ok, [%JobListStub{}, ...]} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec get_jobs(Tesla.Env.client(), keyword()) ::
          {:ok, list(NomadClient.Model.JobListStub.t())} | {:error, Tesla.Env.t()}
  def get_jobs(connection, opts \\ []) do
    optional_params = %{
      :prefix => :query
    }

    %{}
    |> method(:get)
    |> url("/jobs")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, [%NomadClient.Model.JobListStub{}]}
    ])
  end

  @doc """
  parse a HCL jobspec and produce the equivalent JSON encoded job

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - jobs_parse_request (JobsParseRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.Job.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec parse_job_hcl(Tesla.Env.client(), NomadClient.Model.JobsParseRequest.t(), keyword()) ::
          {:ok, NomadClient.Model.Job.t()} | {:error, Tesla.Env.t()}
  def parse_job_hcl(connection, jobs_parse_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/jobs/parse")
    |> add_param(:body, :body, jobs_parse_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.Job{}}
    ])
  end

  @doc """
  invokes a dry-run of the scheduler for the job

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - job_plan_request (JobPlanRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobPlanResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec plan_job(Tesla.Env.client(), String.t(), NomadClient.Model.JobPlanRequest.t(), keyword()) ::
          {:ok, NomadClient.Model.JobPlanResponse.t()} | {:error, Tesla.Env.t()}
  def plan_job(connection, job_id, job_plan_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/job/#{job_id}/plan")
    |> add_param(:body, :body, job_plan_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobPlanResponse{}}
    ])
  end

  @doc """
  creates (aka \"registers\") a new job in the system

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - register_job_request (RegisterJobRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobRegisterResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec register_job(Tesla.Env.client(), NomadClient.Model.RegisterJobRequest.t(), keyword()) ::
          {:ok, NomadClient.Model.JobRegisterResponse.t()} | {:error, Tesla.Env.t()}
  def register_job(connection, register_job_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/jobs")
    |> add_param(:body, :body, register_job_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobRegisterResponse{}}
    ])
  end

  @doc """
  reverts the job to an older version

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - job_revert_request (JobRevertRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobRegisterResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec revert_job(
          Tesla.Env.client(),
          String.t(),
          NomadClient.Model.JobRevertRequest.t(),
          keyword()
        ) :: {:ok, NomadClient.Model.JobRegisterResponse.t()} | {:error, Tesla.Env.t()}
  def revert_job(connection, job_id, job_revert_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/job/#{job_id}/revert")
    |> add_param(:body, :body, job_revert_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobRegisterResponse{}}
    ])
  end

  @doc """
  performs a scaling action against a job. Currently, this endpoint supports scaling the count for a task group

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - scaling_request (ScalingRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobRegisterResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec scale_task_group(
          Tesla.Env.client(),
          String.t(),
          NomadClient.Model.ScalingRequest.t(),
          keyword()
        ) :: {:ok, NomadClient.Model.JobRegisterResponse.t()} | {:error, Tesla.Env.t()}
  def scale_task_group(connection, job_id, scaling_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/job/#{job_id}/scale")
    |> add_param(:body, :body, scaling_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobRegisterResponse{}}
    ])
  end

  @doc """
  sets the job's stability

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - job_stability_request (JobStabilityRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobStabilityResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec set_job_stability(
          Tesla.Env.client(),
          String.t(),
          NomadClient.Model.JobStabilityRequest.t(),
          keyword()
        ) :: {:ok, NomadClient.Model.JobStabilityResponse.t()} | {:error, Tesla.Env.t()}
  def set_job_stability(connection, job_id, job_stability_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/job/#{job_id}/stable")
    |> add_param(:body, :body, job_stability_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobStabilityResponse{}}
    ])
  end

  @doc """
  deregisters a job, and stops all allocations part of it

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - opts (KeywordList): [optional] Optional parameters
    - :purge (boolean()): Specifies that the job should stopped and purged immediately. This means the job will not be queryable after being stopped. If not set, the job will be purged by the garbage collector
  ## Returns

  {:ok, NomadClient.Model.JobDeregisterResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec stop_job(Tesla.Env.client(), String.t(), keyword()) ::
          {:ok, NomadClient.Model.JobDeregisterResponse.t()} | {:error, Tesla.Env.t()}
  def stop_job(connection, job_id, opts \\ []) do
    optional_params = %{
      :purge => :query
    }

    %{}
    |> method(:delete)
    |> url("/job/#{job_id}")
    |> add_optional_params(optional_params, opts)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobDeregisterResponse{}}
    ])
  end

  @doc """
  registers a new job or updates an existing job

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_id (String.t): job id
  - register_job_request (RegisterJobRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobRegisterResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec update_job(
          Tesla.Env.client(),
          String.t(),
          NomadClient.Model.RegisterJobRequest.t(),
          keyword()
        ) :: {:ok, NomadClient.Model.JobRegisterResponse.t()} | {:error, Tesla.Env.t()}
  def update_job(connection, job_id, register_job_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/job/#{job_id}")
    |> add_param(:body, :body, register_job_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobRegisterResponse{}}
    ])
  end

  @doc """
  validate object structs, fields, and types

  ## Parameters

  - connection (NomadClient.Connection): Connection to server
  - job_validate_request (JobValidateRequest): 
  - opts (KeywordList): [optional] Optional parameters
  ## Returns

  {:ok, NomadClient.Model.JobValidateResponse.t} on success
  {:error, Tesla.Env.t} on failure
  """
  @spec validate_job(Tesla.Env.client(), NomadClient.Model.JobValidateRequest.t(), keyword()) ::
          {:ok, NomadClient.Model.JobValidateResponse.t()} | {:error, Tesla.Env.t()}
  def validate_job(connection, job_validate_request, _opts \\ []) do
    %{}
    |> method(:post)
    |> url("/validate/job")
    |> add_param(:body, :body, job_validate_request)
    |> Enum.into([])
    |> (&Connection.request(connection, &1)).()
    |> evaluate_response([
      {200, %NomadClient.Model.JobValidateResponse{}}
    ])
  end
end
