# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.SchedulerSetConfigurationResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Updated
  ]

  @type t :: %__MODULE__{
          :Updated => boolean() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.SchedulerSetConfigurationResponse do
  def decode(value, _options) do
    value
  end
end
