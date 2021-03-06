# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.ServerMembers do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ServerName,
    :ServerRegion,
    :ServerDc,
    :Members
  ]

  @type t :: %__MODULE__{
          :ServerName => String.t() | nil,
          :ServerRegion => String.t() | nil,
          :ServerDc => String.t() | nil,
          :Members => [NomadClient.Model.AgentMember.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.ServerMembers do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Members, :list, NomadClient.Model.AgentMember, options)
  end
end
