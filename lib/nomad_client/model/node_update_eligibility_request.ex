# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.NodeUpdateEligibilityRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Eligibility,
    :NodeID
  ]

  @type t :: %__MODULE__{
          :Eligibility => String.t() | nil,
          :NodeID => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.NodeUpdateEligibilityRequest do
  def decode(value, _options) do
    value
  end
end
