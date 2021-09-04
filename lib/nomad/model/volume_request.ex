# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.VolumeRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :Type,
    :Source,
    :ReadOnly,
    :MountOptions
  ]

  @type t :: %__MODULE__{
          :Name => String.t() | nil,
          :Type => String.t() | nil,
          :Source => String.t() | nil,
          :ReadOnly => boolean() | nil,
          :MountOptions => Nomad.Model.CsiMountOptions.t() | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.VolumeRequest do
  import Nomad.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:MountOptions, :struct, Nomad.Model.CsiMountOptions, options)
  end
end
