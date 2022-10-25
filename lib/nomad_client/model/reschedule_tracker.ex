# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.RescheduleTracker do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Events
  ]

  @type t :: %__MODULE__{
          :Events => [NomadClient.Model.RescheduleEvent.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.RescheduleTracker do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Events, :list, NomadClient.Model.RescheduleEvent, options)
  end
end
