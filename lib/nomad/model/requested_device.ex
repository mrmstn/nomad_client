# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.RequestedDevice do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :Count,
    :Constraints,
    :Affinities
  ]

  @type t :: %__MODULE__{
          :Name => String.t() | nil,
          :Count => integer() | nil,
          :Constraints => [Nomad.Model.Constraint.t()] | nil,
          :Affinities => [Nomad.Model.Affinity.t()] | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.RequestedDevice do
  import Nomad.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Constraints, :list, Nomad.Model.Constraint, options)
    |> deserialize(:Affinities, :list, Nomad.Model.Affinity, options)
  end
end
