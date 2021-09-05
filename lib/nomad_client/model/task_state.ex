# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.TaskState do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :State,
    :Failed,
    :Restarts,
    :LastRestart,
    :StartedAt,
    :FinishedAt,
    :Events
  ]

  @type t :: %__MODULE__{
          :State => String.t() | nil,
          :Failed => boolean() | nil,
          :Restarts => integer() | nil,
          :LastRestart => DateTime.t() | nil,
          :StartedAt => DateTime.t() | nil,
          :FinishedAt => DateTime.t() | nil,
          :Events => [NomadClient.Model.TaskEvent.t()] | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.TaskState do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Events, :list, NomadClient.Model.TaskEvent, options)
  end
end