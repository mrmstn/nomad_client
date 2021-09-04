# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.AllocationListStub do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"ID",
    :"EvalID",
    :"Name",
    :"Namespace",
    :"NodeID",
    :"NodeName",
    :"JobID",
    :"JobType",
    :"JobVersion",
    :"TaskGroup",
    :"DesiredStatus",
    :"DesiredDescription",
    :"ClientStatus",
    :"ClientDescription",
    :"TaskStates",
    :"DeploymentStatus",
    :"FollowupEvalID",
    :"RescheduleTracker",
    :"PreemptedAllocations",
    :"PreemptedByAllocation",
    :"CreateIndex",
    :"ModifyIndex",
    :"CreateTime",
    :"ModifyTime"
  ]

  @type t :: %__MODULE__{
    :"ID" => String.t | nil,
    :"EvalID" => String.t | nil,
    :"Name" => String.t | nil,
    :"Namespace" => String.t | nil,
    :"NodeID" => String.t | nil,
    :"NodeName" => String.t | nil,
    :"JobID" => String.t | nil,
    :"JobType" => String.t | nil,
    :"JobVersion" => integer() | nil,
    :"TaskGroup" => String.t | nil,
    :"DesiredStatus" => String.t | nil,
    :"DesiredDescription" => String.t | nil,
    :"ClientStatus" => String.t | nil,
    :"ClientDescription" => String.t | nil,
    :"TaskStates" => %{optional(String.t) => Nomad.Model.TaskState.t} | nil,
    :"DeploymentStatus" => Nomad.Model.AllocDeploymentStatus.t | nil,
    :"FollowupEvalID" => String.t | nil,
    :"RescheduleTracker" => Nomad.Model.RescheduleTracker.t | nil,
    :"PreemptedAllocations" => [String.t] | nil,
    :"PreemptedByAllocation" => String.t | nil,
    :"CreateIndex" => integer() | nil,
    :"ModifyIndex" => integer() | nil,
    :"CreateTime" => integer() | nil,
    :"ModifyTime" => integer() | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.AllocationListStub do
  import Nomad.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"TaskStates", :map, Nomad.Model.TaskState, options)
    |> deserialize(:"DeploymentStatus", :struct, Nomad.Model.AllocDeploymentStatus, options)
    |> deserialize(:"RescheduleTracker", :struct, Nomad.Model.RescheduleTracker, options)
  end
end

