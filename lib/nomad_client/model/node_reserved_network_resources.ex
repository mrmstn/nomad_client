# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.NodeReservedNetworkResources do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ReservedHostPorts
  ]

  @type t :: %__MODULE__{
          :ReservedHostPorts => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.NodeReservedNetworkResources do
  def decode(value, _options) do
    value
  end
end
