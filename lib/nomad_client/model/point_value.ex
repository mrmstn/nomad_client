# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.PointValue do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :Points
  ]

  @type t :: %__MODULE__{
          :Name => String.t() | nil,
          :Points => [float()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.PointValue do
  def decode(value, _options) do
    value
  end
end
