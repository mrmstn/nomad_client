# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.NodeDeviceLocality do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :PciBusID
  ]

  @type t :: %__MODULE__{
          :PciBusID => String.t() | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.NodeDeviceLocality do
  def decode(value, _options) do
    value
  end
end
