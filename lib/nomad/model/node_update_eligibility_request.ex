# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.NodeUpdateEligibilityRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :NodeID,
    :Eligibility
  ]

  @type t :: %__MODULE__{
          :NodeID => String.t() | nil,
          :Eligibility => String.t()
        }
end

defimpl Poison.Decoder, for: Nomad.Model.NodeUpdateEligibilityRequest do
  def decode(value, _options) do
    value
  end
end
