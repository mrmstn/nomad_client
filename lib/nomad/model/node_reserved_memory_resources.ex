# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.NodeReservedMemoryResources do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :MemoryMB
  ]

  @type t :: %__MODULE__{
          :MemoryMB => integer() | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.NodeReservedMemoryResources do
  def decode(value, _options) do
    value
  end
end
