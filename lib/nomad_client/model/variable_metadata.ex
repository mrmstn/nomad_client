# NOTE: This file is auto generated by OpenAPI Generator 6.2.0 (https://openapi-generator.tech).
# Do not edit this file manually.

defmodule NomadClient.Model.VariableMetadata do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :CreateIndex,
    :CreateTime,
    :ModifyIndex,
    :ModifyTime,
    :Namespace,
    :Path
  ]

  @type t :: %__MODULE__{
          :CreateIndex => integer() | nil,
          :CreateTime => integer() | nil,
          :ModifyIndex => integer() | nil,
          :ModifyTime => integer() | nil,
          :Namespace => String.t() | nil,
          :Path => String.t() | nil
        }
end

defimpl Poison.Decoder, for: NomadClient.Model.VariableMetadata do
  def decode(value, _options) do
    value
  end
end
