# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.TaskState do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Events,
    :Failed,
    :FinishedAt,
    :LastRestart,
    :Restarts,
    :StartedAt,
    :State,
    :TaskHandle
  ]

  @type t :: %__MODULE__{
          :Events => [NomadClient.Model.TaskEvent.t()] | nil,
          :Failed => boolean() | nil,
          :FinishedAt => DateTime.t() | nil,
          :LastRestart => DateTime.t() | nil,
          :Restarts => integer() | nil,
          :StartedAt => DateTime.t() | nil,
          :State => String.t() | nil,
          :TaskHandle => NomadClient.Model.TaskHandle.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.TaskState do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Events, :list, NomadClient.Model.TaskEvent, options)
    |> deserialize(:TaskHandle, :struct, NomadClient.Model.TaskHandle, options)
  end
end
