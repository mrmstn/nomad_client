# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.PortMapping do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :HostIP,
    :Label,
    :To,
    :Value
  ]

  @type t :: %__MODULE__{
          :HostIP => String.t() | nil,
          :Label => String.t() | nil,
          :To => integer() | nil,
          :Value => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.PortMapping do
  def decode(value, _options) do
    value
  end
end
