# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.Consul do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Namespace
  ]

  @type t :: %__MODULE__{
          :Namespace => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.Consul do
  def decode(value, _options) do
    value
  end
end
