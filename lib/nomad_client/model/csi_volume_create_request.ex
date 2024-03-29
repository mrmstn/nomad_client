# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.CsiVolumeCreateRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Namespace,
    :Region,
    :SecretID,
    :Volumes
  ]

  @type t :: %__MODULE__{
          :Namespace => String.t() | nil,
          :Region => String.t() | nil,
          :SecretID => String.t() | nil,
          :Volumes => [NomadClient.Model.CsiVolume.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.CsiVolumeCreateRequest do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Volumes, :list, NomadClient.Model.CsiVolume, options)
  end
end
