# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.CsiInfo do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :AllocID,
    :ControllerInfo,
    :HealthDescription,
    :Healthy,
    :NodeInfo,
    :PluginID,
    :RequiresControllerPlugin,
    :RequiresTopologies,
    :UpdateTime
  ]

  @type t :: %__MODULE__{
          :AllocID => String.t() | nil,
          :ControllerInfo => NomadClient.Model.CsiControllerInfo.t() | nil,
          :HealthDescription => String.t() | nil,
          :Healthy => boolean() | nil,
          :NodeInfo => NomadClient.Model.CsiNodeInfo.t() | nil,
          :PluginID => String.t() | nil,
          :RequiresControllerPlugin => boolean() | nil,
          :RequiresTopologies => boolean() | nil,
          :UpdateTime => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.CsiInfo do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:ControllerInfo, :struct, NomadClient.Model.CsiControllerInfo, options)
    |> deserialize(:NodeInfo, :struct, NomadClient.Model.CsiNodeInfo, options)
  end
end
