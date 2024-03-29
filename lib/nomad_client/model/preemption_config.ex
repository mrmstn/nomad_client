# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.PreemptionConfig do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :BatchSchedulerEnabled,
    :ServiceSchedulerEnabled,
    :SysBatchSchedulerEnabled,
    :SystemSchedulerEnabled
  ]

  @type t :: %__MODULE__{
          :BatchSchedulerEnabled => boolean() | nil,
          :ServiceSchedulerEnabled => boolean() | nil,
          :SysBatchSchedulerEnabled => boolean() | nil,
          :SystemSchedulerEnabled => boolean() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.PreemptionConfig do
  def decode(value, _options) do
    value
  end
end
