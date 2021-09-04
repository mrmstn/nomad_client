# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.TaskGroupScaleStatus do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Desired,
    :Placed,
    :Running,
    :Healthy,
    :Unhealthy,
    :Events
  ]

  @type t :: %__MODULE__{
          :Desired => integer() | nil,
          :Placed => integer() | nil,
          :Running => integer() | nil,
          :Healthy => integer() | nil,
          :Unhealthy => integer() | nil,
          :Events => [Nomad.Model.ScalingEvent.t()] | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.TaskGroupScaleStatus do
  import Nomad.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Events, :list, Nomad.Model.ScalingEvent, options)
  end
end
