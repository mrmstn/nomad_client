# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.Resources do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :CPU,
    :Cores,
    :Devices,
    :DiskMB,
    :IOPS,
    :MemoryMB,
    :MemoryMaxMB,
    :Networks
  ]

  @type t :: %__MODULE__{
          :CPU => integer() | nil,
          :Cores => integer() | nil,
          :Devices => [NomadClient.Model.RequestedDevice.t()] | nil,
          :DiskMB => integer() | nil,
          :IOPS => integer() | nil,
          :MemoryMB => integer() | nil,
          :MemoryMaxMB => integer() | nil,
          :Networks => [NomadClient.Model.NetworkResource.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.Resources do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Devices, :list, NomadClient.Model.RequestedDevice, options)
    |> deserialize(:Networks, :list, NomadClient.Model.NetworkResource, options)
  end
end
