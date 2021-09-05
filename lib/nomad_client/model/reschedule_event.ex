# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.RescheduleEvent do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :RescheduleTime,
    :PrevAllocID,
    :PrevNodeID
  ]

  @type t :: %__MODULE__{
          :RescheduleTime => integer() | nil,
          :PrevAllocID => String.t() | nil,
          :PrevNodeID => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.RescheduleEvent do
  def decode(value, _options) do
    value
  end
end