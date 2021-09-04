# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.OperatorHealthReply do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Healthy",
    :"FailureTolerance",
    :"Servers"
  ]

  @type t :: %__MODULE__{
    :"Healthy" => boolean() | nil,
    :"FailureTolerance" => integer() | nil,
    :"Servers" => [Nomad.Model.ServerHealth.t] | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.OperatorHealthReply do
  import Nomad.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Servers", :list, Nomad.Model.ServerHealth, options)
  end
end

