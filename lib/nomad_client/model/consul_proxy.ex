# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.ConsulProxy do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Config,
    :ExposeConfig,
    :LocalServiceAddress,
    :LocalServicePort,
    :Upstreams
  ]

  @type t :: %__MODULE__{
          :Config => %{optional(String.t()) => any()} | nil,
          :ExposeConfig => NomadClient.Model.ConsulExposeConfig.t() | nil,
          :LocalServiceAddress => String.t() | nil,
          :LocalServicePort => integer() | nil,
          :Upstreams => [NomadClient.Model.ConsulUpstream.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.ConsulProxy do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:ExposeConfig, :struct, NomadClient.Model.ConsulExposeConfig, options)
    |> deserialize(:Upstreams, :list, NomadClient.Model.ConsulUpstream, options)
  end
end
