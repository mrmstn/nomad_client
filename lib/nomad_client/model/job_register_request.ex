# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.JobRegisterRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :EnforceIndex,
    :EvalPriority,
    :Job,
    :JobModifyIndex,
    :Namespace,
    :PolicyOverride,
    :PreserveCounts,
    :Region,
    :SecretID
  ]

  @type t :: %__MODULE__{
          :EnforceIndex => boolean() | nil,
          :EvalPriority => integer() | nil,
          :Job => NomadClient.Model.Job.t() | nil,
          :JobModifyIndex => integer() | nil,
          :Namespace => String.t() | nil,
          :PolicyOverride => boolean() | nil,
          :PreserveCounts => boolean() | nil,
          :Region => String.t() | nil,
          :SecretID => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.JobRegisterRequest do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Job, :struct, NomadClient.Model.Job, options)
  end
end
