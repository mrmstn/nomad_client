# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.AllocatedSharedResources do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :DiskMB,
    :Networks
  ]

  @type t :: %__MODULE__{
          :DiskMB => integer() | nil,
          :Networks => [Nomad.Model.NetworkResource.t()] | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.AllocatedSharedResources do
  import Nomad.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Networks, :list, Nomad.Model.NetworkResource, options)
  end
end
