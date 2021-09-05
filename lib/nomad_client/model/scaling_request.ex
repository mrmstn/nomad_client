# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.ScalingRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Count,
    :Target,
    :Reason,
    :Error,
    :Meta,
    :PolicyOverride
  ]

  @type t :: %__MODULE__{
          :Count => integer() | nil,
          :Target => %{optional(String.t()) => String.t()} | nil,
          :Reason => String.t() | nil,
          :Error => String.t() | nil,
          :Meta => %{optional(String.t()) => map()} | nil,
          :PolicyOverride => boolean() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.ScalingRequest do
  def decode(value, _options) do
    value
  end
end