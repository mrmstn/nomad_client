# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.ConsulExposeConfig do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Path
  ]

  @type t :: %__MODULE__{
          :Path => [NomadClient.Model.ConsulExposePath.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.ConsulExposeConfig do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Path, :list, NomadClient.Model.ConsulExposePath, options)
  end
end
