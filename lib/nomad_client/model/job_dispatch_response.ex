# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.JobDispatchResponse do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :DispatchedJobID,
    :EvalID,
    :EvalCreateIndex,
    :JobCreateIndex
  ]

  @type t :: %__MODULE__{
          :DispatchedJobID => String.t() | nil,
          :EvalID => String.t() | nil,
          :EvalCreateIndex => integer() | nil,
          :JobCreateIndex => integer() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.JobDispatchResponse do
  def decode(value, _options) do
    value
  end
end