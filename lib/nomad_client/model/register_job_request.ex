# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule NomadClient.Model.RegisterJobRequest do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Job,
    :EnforceIndex,
    :JobModifyIndex,
    :PolicyOverride
  ]

  @type t :: %__MODULE__{
          :Job => NomadClient.Model.Job.t() | nil,
          :EnforceIndex => boolean() | nil,
          :JobModifyIndex => integer() | nil,
          :PolicyOverride => boolean() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.RegisterJobRequest do
  import NomadClient.Deserializer

  def decode(value, options) do
    value
    |> deserialize(:Job, :struct, NomadClient.Model.Job, options)
  end
end
