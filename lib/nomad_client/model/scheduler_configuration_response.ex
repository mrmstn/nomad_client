# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.SchedulerConfigurationResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :KnownLeader,
    :LastContact,
    :LastIndex,
    :NextToken,
    :RequestTime,
    :SchedulerConfig
  ]

  @type t :: %__MODULE__{
          :KnownLeader => boolean() | nil,
          :LastContact => integer() | nil,
          :LastIndex => integer() | nil,
          :NextToken => String.t() | nil,
          :RequestTime => integer() | nil,
          :SchedulerConfig => NomadClient.Model.SchedulerConfiguration.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.SchedulerConfigurationResponse do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:SchedulerConfig, :struct, NomadClient.Model.SchedulerConfiguration, options)
  end
end
