# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.AgentHealth do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Ok,
    :Message
  ]

  @type t :: %__MODULE__{
          :Ok => boolean() | nil,
          :Message => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.AgentHealth do
  def decode(value, _options) do
    value
  end
end
