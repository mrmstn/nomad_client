# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.SchedulerConfiguration do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :PreemptionConfig,
    :CreateIndex,
    :ModifyIndex
  ]

  @type t :: %__MODULE__{
          :PreemptionConfig => NomadClient.Model.PreemptionConfig.t() | nil,
          :CreateIndex => integer() | nil,
          :ModifyIndex => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.SchedulerConfiguration do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:PreemptionConfig, :struct, NomadClient.Model.PreemptionConfig, options)
  end
end
