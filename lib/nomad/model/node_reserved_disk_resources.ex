# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.NodeReservedDiskResources do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :DiskMB
  ]

  @type t :: %__MODULE__{
          :DiskMB => integer() | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.NodeReservedDiskResources do
  def decode(value, _options) do
    value
  end
end
