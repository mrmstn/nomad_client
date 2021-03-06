# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.ConsulProxy do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :LocalServiceAddress,
    :LocalServicePort,
    :Upstreams,
    :Config
  ]

  @type t :: %__MODULE__{
          :LocalServiceAddress => String.t() | nil,
          :LocalServicePort => integer() | nil,
          :Upstreams => [NomadClient.Model.ConsulUpstream.t()] | nil,
          :Config => %{optional(String.t()) => map()} | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.ConsulProxy do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Upstreams, :list, NomadClient.Model.ConsulUpstream, options)
  end
end
