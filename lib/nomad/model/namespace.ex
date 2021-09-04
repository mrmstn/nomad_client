# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.Namespace do
  @moduledoc """

  """

  @derive [Poison.Encoder]
  defstruct [
    :Name,
    :Description,
    :Quota,
    :CreateIndex,
    :ModifyIndex
  ]

  @type t :: %__MODULE__{
          :Name => String.t() | nil,
          :Description => String.t() | nil,
          :Quota => String.t() | nil,
          :CreateIndex => integer() | nil,
          :ModifyIndex => integer() | nil
        }
end

defimpl Poison.Decoder, for: Nomad.Model.Namespace do
  def decode(value, _options) do
    value
  end
end
