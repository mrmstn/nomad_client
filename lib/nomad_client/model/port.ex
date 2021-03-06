# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.Port do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Label,
    :Value,
    :To
  ]

  @type t :: %__MODULE__{
          :Label => String.t() | nil,
          :Value => integer() | nil,
          :To => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.Port do
  def decode(value, _options) do
    value
  end
end
