# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.NodeListStub do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Address,
    :ID,
    :Datacenter,
    :Name,
    :NodeClass,
    :Version,
    :Drain,
    :SchedulingEligibility,
    :Status,
    :StatusDescription,
    :Drivers,
    :CreateIndex,
    :ModifyIndex
  ]

  @type t :: %__MODULE__{
          :Address => String.t() | nil,
          :ID => String.t() | nil,
          :Datacenter => String.t() | nil,
          :Name => String.t() | nil,
          :NodeClass => String.t() | nil,
          :Version => String.t() | nil,
          :Drain => boolean() | nil,
          :SchedulingEligibility => String.t() | nil,
          :Status => String.t() | nil,
          :StatusDescription => String.t() | nil,
          :Drivers => %{optional(String.t()) => NomadClient.Model.DriverInfo.t()} | nil,
          :CreateIndex => integer() | nil,
          :ModifyIndex => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.NodeListStub do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Drivers, :map, NomadClient.Model.DriverInfo, options)
  end
end
