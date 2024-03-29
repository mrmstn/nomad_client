# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.AllocatedSharedResources do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :DiskMB,
    :Networks,
    :Ports
  ]

  @type t :: %__MODULE__{
          :DiskMB => integer() | nil,
          :Networks => [NomadClient.Model.NetworkResource.t()] | nil,
          :Ports => [NomadClient.Model.PortMapping.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.AllocatedSharedResources do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Networks, :list, NomadClient.Model.NetworkResource, options)
    |> deserialize(:Ports, :list, NomadClient.Model.PortMapping, options)
  end
end
