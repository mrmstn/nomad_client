# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.ConsulIngressService do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Hosts,
    :Name
  ]

  @type t :: %__MODULE__{
          :Hosts => [String.t()] | nil,
          :Name => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.ConsulIngressService do
  def decode(value, _options) do
    value
  end
end