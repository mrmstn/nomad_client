# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.NodeDiskResources do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"DiskMB"
  ]

  @type t :: %__MODULE__{
    :"DiskMB" => integer() | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.NodeDiskResources do
  def decode(value, _options) do
    value
  end
end

