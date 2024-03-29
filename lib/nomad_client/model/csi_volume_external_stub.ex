# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.CsiVolumeExternalStub do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :CapacityBytes,
    :CloneID,
    :ExternalID,
    :IsAbnormal,
    :PublishedExternalNodeIDs,
    :SnapshotID,
    :Status,
    :VolumeContext
  ]

  @type t :: %__MODULE__{
          :CapacityBytes => integer() | nil,
          :CloneID => String.t() | nil,
          :ExternalID => String.t() | nil,
          :IsAbnormal => boolean() | nil,
          :PublishedExternalNodeIDs => [String.t()] | nil,
          :SnapshotID => String.t() | nil,
          :Status => String.t() | nil,
          :VolumeContext => %{optional(String.t()) => String.t()} | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.CsiVolumeExternalStub do
  def decode(value, _options) do
    value
  end
end
