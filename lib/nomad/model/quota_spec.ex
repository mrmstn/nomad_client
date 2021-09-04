# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.QuotaSpec do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Name",
    :"Description",
    :"Limits",
    :"CreateIndex",
    :"ModifyIndex"
  ]

  @type t :: %__MODULE__{
    :"Name" => String.t | nil,
    :"Description" => String.t | nil,
    :"Limits" => [Nomad.Model.QuotaLimit.t] | nil,
    :"CreateIndex" => integer() | nil,
    :"ModifyIndex" => integer() | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.QuotaSpec do
  import Nomad.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"Limits", :list, Nomad.Model.QuotaLimit, options)
  end
end

