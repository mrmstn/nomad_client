# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.NodeDeviceResource do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Vendor,
    :Type,
    :Name,
    :Instances,
    :Attributes
  ]

  @type t :: %__MODULE__{
          :Vendor => String.t() | nil,
          :Type => String.t() | nil,
          :Name => String.t() | nil,
          :Instances => [Nomad.Model.NodeDevice.t()] | nil,
          :Attributes => %{optional(String.t()) => Nomad.Model.Attribute.t()} | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.NodeDeviceResource do
  import Nomad.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Instances, :list, Nomad.Model.NodeDevice, options)
    |> deserialize(:Attributes, :map, Nomad.Model.Attribute, options)
  end
end
