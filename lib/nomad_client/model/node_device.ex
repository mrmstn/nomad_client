# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.NodeDevice do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ID,
    :Healthy,
    :HealthDescription,
    :Locality
  ]

  @type t :: %__MODULE__{
          :ID => String.t() | nil,
          :Healthy => boolean() | nil,
          :HealthDescription => String.t() | nil,
          :Locality => NomadClient.Model.NodeDeviceLocality.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.NodeDevice do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Locality, :struct, NomadClient.Model.NodeDeviceLocality, options)
  end
end
