# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.SchedulerSetConfigurationResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :LastIndex,
    :RequestTime,
    :Updated
  ]

  @type t :: %__MODULE__{
          :LastIndex => integer() | nil,
          :RequestTime => integer() | nil,
          :Updated => boolean() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.SchedulerSetConfigurationResponse do
  def decode(value, _options) do
    value
  end
end
