# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.DeviceStats do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Summary,
    :Stats,
    :Timestamp
  ]

  @type t :: %__MODULE__{
          :Summary => NomadClient.Model.StatValue.t() | nil,
          :Stats => NomadClient.Model.StatObject.t() | nil,
          :Timestamp => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.DeviceStats do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Summary, :struct, NomadClient.Model.StatValue, options)
    |> deserialize(:Stats, :struct, NomadClient.Model.StatObject, options)
  end
end
