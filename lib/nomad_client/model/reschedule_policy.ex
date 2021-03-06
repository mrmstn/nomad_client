# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.ReschedulePolicy do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Attempts,
    :Interval,
    :Delay,
    :DelayFunction,
    :MaxDelay,
    :Unlimited
  ]

  @type t :: %__MODULE__{
          :Attempts => integer() | nil,
          :Interval => integer() | nil,
          :Delay => integer() | nil,
          :DelayFunction => String.t() | nil,
          :MaxDelay => integer() | nil,
          :Unlimited => boolean() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.ReschedulePolicy do
  def decode(value, _options) do
    value
  end
end
