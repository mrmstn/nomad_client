# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.AllocSignalRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Task,
    :Signal
  ]

  @type t :: %__MODULE__{
          :Task => String.t() | nil,
          :Signal => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.AllocSignalRequest do
  def decode(value, _options) do
    value
  end
end
