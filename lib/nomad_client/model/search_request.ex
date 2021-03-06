# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.SearchRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Prefix,
    :Context
  ]

  @type t :: %__MODULE__{
          :Prefix => String.t(),
          :Context => String.t()
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.SearchRequest do
  def decode(value, _options) do
    value
  end
end
