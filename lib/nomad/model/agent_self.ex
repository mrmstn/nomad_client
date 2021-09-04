# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.AgentSelf do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Config",
    :"Member",
    :"Stats"
  ]

  @type t :: %__MODULE__{
    :"Config" => %{optional(String.t) => map()} | nil,
    :"Member" => Nomad.Model.AgentMember.t | nil,
    :"Stats" => %{optional(String.t) => %{optional(String.t) => String.t}} | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.AgentSelf do
  import Nomad.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Member", :struct, Nomad.Model.AgentMember, options)
  end
end

