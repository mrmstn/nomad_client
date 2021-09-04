# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.DrainStrategy do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :DrainSpec,
    :ForceDeadline,
    :StartedAt
  ]

  @type t :: %__MODULE__{
          :DrainSpec => Nomad.Model.DrainSpec.t() | nil,
          :ForceDeadline => DateTime.t() | nil,
          :StartedAt => DateTime.t() | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.DrainStrategy do
  import Nomad.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:DrainSpec, :struct, Nomad.Model.DrainSpec, options)
  end
end
