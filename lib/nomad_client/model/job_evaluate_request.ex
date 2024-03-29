# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.JobEvaluateRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :EvalOptions,
    :JobID,
    :Namespace,
    :Region,
    :SecretID
  ]

  @type t :: %__MODULE__{
          :EvalOptions => NomadClient.Model.EvalOptions.t() | nil,
          :JobID => String.t() | nil,
          :Namespace => String.t() | nil,
          :Region => String.t() | nil,
          :SecretID => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.JobEvaluateRequest do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:EvalOptions, :struct, NomadClient.Model.EvalOptions, options)
  end
end
