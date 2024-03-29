# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.Constraint do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :LTarget,
    :Operand,
    :RTarget
  ]

  @type t :: %__MODULE__{
          :LTarget => String.t() | nil,
          :Operand => String.t() | nil,
          :RTarget => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.Constraint do
  def decode(value, _options) do
    value
  end
end
