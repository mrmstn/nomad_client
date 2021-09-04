# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.DeviceGroupStats do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Vendor",
    :"Type",
    :"Name",
    :"InstanceStats"
  ]

  @type t :: %__MODULE__{
    :"Vendor" => String.t | nil,
    :"Type" => String.t | nil,
    :"Name" => String.t | nil,
    :"InstanceStats" => %{optional(String.t) => Nomad.Model.DeviceStats.t} | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.DeviceGroupStats do
  import Nomad.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"InstanceStats", :map, Nomad.Model.DeviceStats, options)
  end
end

