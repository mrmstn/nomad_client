# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.AllocResourceUsage do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :ResourceUsage,
    :Tasks,
    :Timestamp
  ]

  @type t :: %__MODULE__{
          :ResourceUsage => Nomad.Model.ResourceUsage.t() | nil,
          :Tasks => %{optional(String.t()) => Nomad.Model.TaskResourceUsage.t()} | nil,
          :Timestamp => integer() | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.AllocResourceUsage do
  import Nomad.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:ResourceUsage, :struct, Nomad.Model.ResourceUsage, options)
    |> deserialize(:Tasks, :map, Nomad.Model.TaskResourceUsage, options)
  end
end
