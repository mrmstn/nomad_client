# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.JobDispatchRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Payload,
    :Meta
  ]

  @type t :: %__MODULE__{
          :Payload => binary() | nil,
          :Meta => %{optional(String.t()) => String.t()} | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.JobDispatchRequest do
  def decode(value, _options) do
    value
  end
end