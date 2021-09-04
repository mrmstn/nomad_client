# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.FieldDiff do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Type,
    :Name,
    :Old,
    :New,
    :Annotations
  ]

  @type t :: %__MODULE__{
          :Type => String.t() | nil,
          :Name => String.t() | nil,
          :Old => String.t() | nil,
          :New => String.t() | nil,
          :Annotations => [String.t()] | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.FieldDiff do
  def decode(value, _options) do
    value
  end
end
