# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.Resources do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :CPU,
    :Cores,
    :MemoryMB,
    :MemoryMaxMB,
    :DiskMB,
    :Networks,
    :Devices,
    :IOPS
  ]

  @type t :: %__MODULE__{
          :CPU => integer() | nil,
          :Cores => integer() | nil,
          :MemoryMB => integer() | nil,
          :MemoryMaxMB => integer() | nil,
          :DiskMB => integer() | nil,
          :Networks => [NomadClient.Model.NetworkResource.t()] | nil,
          :Devices => [NomadClient.Model.RequestedDevice.t()] | nil,
          :IOPS => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.Resources do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Networks, :list, NomadClient.Model.NetworkResource, options)
    |> deserialize(:Devices, :list, NomadClient.Model.RequestedDevice, options)
  end
end
