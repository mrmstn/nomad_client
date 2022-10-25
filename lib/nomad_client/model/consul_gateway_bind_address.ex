# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.ConsulGatewayBindAddress do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Address,
    :Name,
    :Port
  ]

  @type t :: %__MODULE__{
          :Address => String.t() | nil,
          :Name => String.t() | nil,
          :Port => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.ConsulGatewayBindAddress do
  def decode(value, _options) do
    value
  end
end
