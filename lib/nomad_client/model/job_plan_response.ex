# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.JobPlanResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Annotations,
    :CreatedEvals,
    :Diff,
    :FailedTGAllocs,
    :JobModifyIndex,
    :NextPeriodicLaunch,
    :Warnings
  ]

  @type t :: %__MODULE__{
          :Annotations => NomadClient.Model.PlanAnnotations.t() | nil,
          :CreatedEvals => [NomadClient.Model.Evaluation.t()] | nil,
          :Diff => NomadClient.Model.JobDiff.t() | nil,
          :FailedTGAllocs =>
            %{optional(String.t()) => NomadClient.Model.AllocationMetric.t()} | nil,
          :JobModifyIndex => integer() | nil,
          :NextPeriodicLaunch => DateTime.t() | nil,
          :Warnings => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.JobPlanResponse do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Annotations, :struct, NomadClient.Model.PlanAnnotations, options)
    |> deserialize(:CreatedEvals, :list, NomadClient.Model.Evaluation, options)
    |> deserialize(:Diff, :struct, NomadClient.Model.JobDiff, options)
    |> deserialize(:FailedTGAllocs, :map, NomadClient.Model.AllocationMetric, options)
  end
end
