# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.MetricsSummary do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Counters,
    :Gauges,
    :Points,
    :Samples,
    :Timestamp
  ]

  @type t :: %__MODULE__{
          :Counters => [NomadClient.Model.SampledValue.t()] | nil,
          :Gauges => [NomadClient.Model.GaugeValue.t()] | nil,
          :Points => [NomadClient.Model.PointValue.t()] | nil,
          :Samples => [NomadClient.Model.SampledValue.t()] | nil,
          :Timestamp => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.MetricsSummary do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Counters, :list, NomadClient.Model.SampledValue, options)
    |> deserialize(:Gauges, :list, NomadClient.Model.GaugeValue, options)
    |> deserialize(:Points, :list, NomadClient.Model.PointValue, options)
    |> deserialize(:Samples, :list, NomadClient.Model.SampledValue, options)
  end
end
