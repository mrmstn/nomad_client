# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.CsiVolumeListExternalResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :NextToken,
    :Volumes
  ]

  @type t :: %__MODULE__{
          :NextToken => String.t() | nil,
          :Volumes => [NomadClient.Model.CsiVolumeExternalStub.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.CsiVolumeListExternalResponse do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Volumes, :list, NomadClient.Model.CsiVolumeExternalStub, options)
  end
end
