# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.CsiControllerInfo do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :SupportsReadOnlyAttach,
    :SupportsAttachDetach,
    :SupportsListVolumes,
    :SupportsListVolumesAttachedNodes
  ]

  @type t :: %__MODULE__{
          :SupportsReadOnlyAttach => boolean() | nil,
          :SupportsAttachDetach => boolean() | nil,
          :SupportsListVolumes => boolean() | nil,
          :SupportsListVolumesAttachedNodes => boolean() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.CsiControllerInfo do
  def decode(value, _options) do
    value
  end
end
