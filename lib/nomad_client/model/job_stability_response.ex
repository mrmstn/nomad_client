# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.JobStabilityResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Index
  ]

  @type t :: %__MODULE__{
          :Index => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.JobStabilityResponse do
  def decode(value, _options) do
    value
  end
end
