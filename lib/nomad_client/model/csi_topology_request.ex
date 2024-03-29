# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.CsiTopologyRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Preferred,
    :Required
  ]

  @type t :: %__MODULE__{
          :Preferred => [NomadClient.Model.CsiTopology.t()] | nil,
          :Required => [NomadClient.Model.CsiTopology.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.CsiTopologyRequest do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Preferred, :list, NomadClient.Model.CsiTopology, options)
    |> deserialize(:Required, :list, NomadClient.Model.CsiTopology, options)
  end
end
