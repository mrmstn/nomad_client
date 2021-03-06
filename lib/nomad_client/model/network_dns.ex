# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.NetworkDns do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Servers,
    :Searches,
    :Options
  ]

  @type t :: %__MODULE__{
          :Servers => [String.t()] | nil,
          :Searches => [String.t()] | nil,
          :Options => [String.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.NetworkDns do
  def decode(value, _options) do
    value
  end
end
