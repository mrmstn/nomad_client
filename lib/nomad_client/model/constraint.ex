# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.Constraint do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :LTarget,
    :RTarget,
    :Operand
  ]

  @type t :: %__MODULE__{
          :LTarget => String.t() | nil,
          :RTarget => String.t() | nil,
          :Operand => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.Constraint do
  def decode(value, _options) do
    value
  end
end