# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.JobPlanResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :JobModifyIndex,
    :CreatedEvals,
    :Diff,
    :Annotations,
    :FailedTgAllocs,
    :NextPeriodicLaunch,
    :Warnings
  ]

  @type t :: %__MODULE__{
          :JobModifyIndex => integer() | nil,
          :CreatedEvals => [NomadClient.Model.Evaluation.t()] | nil,
          :Diff => NomadClient.Model.JobDiff.t() | nil,
          :Annotations => NomadClient.Model.PlanAnnotations.t() | nil,
          :FailedTgAllocs =>
            %{optional(String.t()) => NomadClient.Model.AllocationMetric.t()} | nil,
          :NextPeriodicLaunch => DateTime.t() | nil,
          :Warnings => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.JobPlanResponse do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:CreatedEvals, :list, NomadClient.Model.Evaluation, options)
    |> deserialize(:Diff, :struct, NomadClient.Model.JobDiff, options)
    |> deserialize(:Annotations, :struct, NomadClient.Model.PlanAnnotations, options)
    |> deserialize(:FailedTgAllocs, :map, NomadClient.Model.AllocationMetric, options)
  end
end
