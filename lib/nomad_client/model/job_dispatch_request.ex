# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.JobDispatchRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :JobID,
    :Meta,
    :Payload
  ]

  @type t :: %__MODULE__{
          :JobID => String.t() | nil,
          :Meta => %{optional(String.t()) => String.t()} | nil,
          :Payload => binary() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.JobDispatchRequest do
  def decode(value, _options) do
    value
  end
end
