# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule Nomad.Model.QueryOptions do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"Region",
    :"Namespace",
    :"AllowStale",
    :"WaitIndex",
    :"WaitTime",
    :"Prefix",
    :"Params",
    :"AuthToken"
  ]

  @type t :: %__MODULE__{
    :"Region" => String.t | nil,
    :"Namespace" => String.t | nil,
    :"AllowStale" => boolean() | nil,
    :"WaitIndex" => integer() | nil,
    :"WaitTime" => integer() | nil,
    :"Prefix" => String.t | nil,
    :"Params" => %{optional(String.t) => String.t} | nil,
    :"AuthToken" => String.t | nil
  }
end

defimpl Poison.Decoder, for: Nomad.Model.QueryOptions do
  def decode(value, _options) do
    value
  end
end

