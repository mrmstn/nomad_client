# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.AllocDeploymentStatus do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Canary,
    :Healthy,
    :ModifyIndex,
    :Timestamp
  ]

  @type t :: %__MODULE__{
          :Canary => boolean() | nil,
          :Healthy => boolean() | nil,
          :ModifyIndex => integer() | nil,
          :Timestamp => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.AllocDeploymentStatus do
  def decode(value, _options) do
    value
  end
end
