# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.JobValidateResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :DriverConfigValidated,
    :Error,
    :ValidationErrors,
    :Warnings
  ]

  @type t :: %__MODULE__{
          :DriverConfigValidated => boolean() | nil,
          :Error => String.t() | nil,
          :ValidationErrors => [String.t()] | nil,
          :Warnings => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.JobValidateResponse do
  def decode(value, _options) do
    value
  end
end
