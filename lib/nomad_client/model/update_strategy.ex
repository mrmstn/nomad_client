# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.UpdateStrategy do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Stagger,
    :MaxParallel,
    :HealthCheck,
    :MinHealthyTime,
    :HealthyDeadline,
    :ProgressDeadline,
    :Canary,
    :AutoRevert,
    :AutoPromote
  ]

  @type t :: %__MODULE__{
          :Stagger => integer() | nil,
          :MaxParallel => integer() | nil,
          :HealthCheck => String.t() | nil,
          :MinHealthyTime => integer() | nil,
          :HealthyDeadline => integer() | nil,
          :ProgressDeadline => integer() | nil,
          :Canary => integer() | nil,
          :AutoRevert => boolean() | nil,
          :AutoPromote => boolean() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.UpdateStrategy do
  def decode(value, _options) do
    value
  end
end