# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.OperatorHealthReply do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :FailureTolerance,
    :Healthy,
    :Servers
  ]

  @type t :: %__MODULE__{
          :FailureTolerance => integer() | nil,
          :Healthy => boolean() | nil,
          :Servers => [NomadClient.Model.ServerHealth.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.OperatorHealthReply do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Servers, :list, NomadClient.Model.ServerHealth, options)
  end
end
