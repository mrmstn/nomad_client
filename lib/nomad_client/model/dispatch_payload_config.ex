# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.DispatchPayloadConfig do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :File
  ]

  @type t :: %__MODULE__{
          :File => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.DispatchPayloadConfig do
  def decode(value, _options) do
    value
  end
end
