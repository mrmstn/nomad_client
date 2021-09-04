# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.StatValue do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :FloatNumeratorVal,
    :FloatDenominatorVal,
    :IntNumeratorVal,
    :IntDenominatorVal,
    :StringVal,
    :BoolVal,
    :Unit,
    :Desc
  ]

  @type t :: %__MODULE__{
          :FloatNumeratorVal => float() | nil,
          :FloatDenominatorVal => float() | nil,
          :IntNumeratorVal => integer() | nil,
          :IntDenominatorVal => integer() | nil,
          :StringVal => String.t() | nil,
          :BoolVal => boolean() | nil,
          :Unit => String.t() | nil,
          :Desc => String.t() | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.StatValue do
  def decode(value, _options) do
    value
  end
end
