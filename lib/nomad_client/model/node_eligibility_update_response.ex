# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.NodeEligibilityUpdateResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :EvalCreateIndex,
    :EvalIDs,
    :LastIndex,
    :NodeModifyIndex,
    :RequestTime
  ]

  @type t :: %__MODULE__{
          :EvalCreateIndex => integer() | nil,
          :EvalIDs => [String.t()] | nil,
          :LastIndex => integer() | nil,
          :NodeModifyIndex => integer() | nil,
          :RequestTime => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.NodeEligibilityUpdateResponse do
  def decode(value, _options) do
    value
  end
end
