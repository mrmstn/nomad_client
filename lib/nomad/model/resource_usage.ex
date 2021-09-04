# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.ResourceUsage do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :MemoryStats,
    :CpuStats,
    :DeviceStats
  ]

  @type t :: %__MODULE__{
          :MemoryStats => Nomad.Model.MemoryStats.t() | nil,
          :CpuStats => Nomad.Model.CpuStats.t() | nil,
          :DeviceStats => [Nomad.Model.DeviceGroupStats.t()] | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.ResourceUsage do
  import Nomad.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:MemoryStats, :struct, Nomad.Model.MemoryStats, options)
    |> deserialize(:CpuStats, :struct, Nomad.Model.CpuStats, options)
    |> deserialize(:DeviceStats, :list, Nomad.Model.DeviceGroupStats, options)
  end
end
