# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.HostStats do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Memory,
    :CPU,
    :DiskStats,
    :DeviceStats,
    :Uptime,
    :CpuTicksConsumed
  ]

  @type t :: %__MODULE__{
          :Memory => NomadClient.Model.HostMemoryStats.t() | nil,
          :CPU => [NomadClient.Model.HostCpuStats.t()] | nil,
          :DiskStats => [NomadClient.Model.HostDiskStats.t()] | nil,
          :DeviceStats => [NomadClient.Model.DeviceGroupStats.t()] | nil,
          :Uptime => integer() | nil,
          :CpuTicksConsumed => float() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.HostStats do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Memory, :struct, NomadClient.Model.HostMemoryStats, options)
    |> deserialize(:CPU, :list, NomadClient.Model.HostCpuStats, options)
    |> deserialize(:DiskStats, :list, NomadClient.Model.HostDiskStats, options)
    |> deserialize(:DeviceStats, :list, NomadClient.Model.DeviceGroupStats, options)
  end
end
